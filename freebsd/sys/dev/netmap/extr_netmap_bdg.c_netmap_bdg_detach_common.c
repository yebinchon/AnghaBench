
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* dtor ) (int *) ;} ;
struct nm_bridge {int bdg_active_ports; int* tmp_bdg_port_index; int* bdg_port_index; int ** bdg_ports; TYPE_1__ bdg_ops; } ;


 int BDG_WLOCK (struct nm_bridge*) ;
 int BDG_WUNLOCK (struct nm_bridge*) ;
 int NM_DEBUG_BDG ;
 int memcpy (int*,int*,int) ;
 int netmap_bdg_free (struct nm_bridge*) ;
 int netmap_debug ;
 int nm_prdis (char*,int,...) ;
 int nm_prerr (char*,int,int) ;
 int nm_prinf (char*,int,int,int) ;
 int stub1 (int *) ;

void
netmap_bdg_detach_common(struct nm_bridge *b, int hw, int sw)
{
 int s_hw = hw, s_sw = sw;
 int i, lim =b->bdg_active_ports;
 uint32_t *tmp = b->tmp_bdg_port_index;
 if (netmap_debug & NM_DEBUG_BDG)
  nm_prinf("detach %d and %d (lim %d)", hw, sw, lim);



 memcpy(b->tmp_bdg_port_index, b->bdg_port_index, sizeof(b->tmp_bdg_port_index));
 for (i = 0; (hw >= 0 || sw >= 0) && i < lim; ) {
  if (hw >= 0 && tmp[i] == hw) {
   nm_prdis("detach hw %d at %d", hw, i);
   lim--;
   tmp[i] = tmp[lim];
   tmp[lim] = hw;
   hw = -1;
  } else if (sw >= 0 && tmp[i] == sw) {
   nm_prdis("detach sw %d at %d", sw, i);
   lim--;
   tmp[i] = tmp[lim];
   tmp[lim] = sw;
   sw = -1;
  } else {
   i++;
  }
 }
 if (hw >= 0 || sw >= 0) {
  nm_prerr("delete failed hw %d sw %d, should panic...", hw, sw);
 }

 BDG_WLOCK(b);
 if (b->bdg_ops.dtor)
  b->bdg_ops.dtor(b->bdg_ports[s_hw]);
 b->bdg_ports[s_hw] = ((void*)0);
 if (s_sw >= 0) {
  b->bdg_ports[s_sw] = ((void*)0);
 }
 memcpy(b->bdg_port_index, b->tmp_bdg_port_index, sizeof(b->tmp_bdg_port_index));
 b->bdg_active_ports = lim;
 BDG_WUNLOCK(b);

 nm_prdis("now %d active ports", lim);
 netmap_bdg_free(b);
}
