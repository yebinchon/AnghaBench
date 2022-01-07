
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ispsoftc_t ;
struct TYPE_4__ {size_t state; int node_wwn; int port_wwn; int new_portid; int portid; int handle; int new_prli_word3; int prli_word3; } ;
typedef TYPE_1__ fcportdb_t ;
struct TYPE_5__ {TYPE_1__* portdb; } ;
typedef TYPE_2__ fcparam ;
typedef int buf2 ;
typedef int buf1 ;


 TYPE_2__* FCPARAM (int *,int) ;
 size_t FC_PORTDB_STATE_NIL ;
 int ISP_LOGALL ;
 int MAX_FC_TARG ;
 int isp_gen_role_str (char*,int,int ) ;
 int isp_prt (int *,int ,char*,int,int,int ,char const*,char*,int ,char*,int ,int ,int ,int ,int ) ;

void
isp_dump_portdb(ispsoftc_t *isp, int chan)
{
 fcparam *fcp = FCPARAM(isp, chan);
 int i;

 for (i = 0; i < MAX_FC_TARG; i++) {
  char buf1[64], buf2[64];
  const char *dbs[8] = {
   "NIL ",
   "PROB",
   "DEAD",
   "CHGD",
   "NEW ",
   "PVLD",
   "ZOMB",
   "VLD "
  };
  fcportdb_t *lp = &fcp->portdb[i];

  if (lp->state == FC_PORTDB_STATE_NIL) {
   continue;
  }
  isp_gen_role_str(buf1, sizeof (buf1), lp->prli_word3);
  isp_gen_role_str(buf2, sizeof (buf2), lp->new_prli_word3);
  isp_prt(isp, ISP_LOGALL, "Chan %d [%d]: hdl 0x%x %s %s 0x%06x =>%s 0x%06x; WWNN 0x%08x%08x WWPN 0x%08x%08x",
      chan, i, lp->handle, dbs[lp->state], buf1, lp->portid, buf2, lp->new_portid,
      (uint32_t) (lp->node_wwn >> 32), (uint32_t) (lp->node_wwn), (uint32_t) (lp->port_wwn >> 32), (uint32_t) (lp->port_wwn));
 }
}
