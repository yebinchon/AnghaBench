
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next_bin; } ;
struct ecore_pending_mcast_cmd {TYPE_1__ data; int done; } ;
struct ecore_mcast_obj {scalar_t__ (* hdl_restore ) (struct bxe_softc*,struct ecore_mcast_obj*,scalar_t__,int*) ;} ;
struct bxe_softc {int dummy; } ;


 int TRUE ;
 scalar_t__ stub1 (struct bxe_softc*,struct ecore_mcast_obj*,scalar_t__,int*) ;

__attribute__((used)) static inline void ecore_mcast_hdl_pending_restore_e2(struct bxe_softc *sc,
 struct ecore_mcast_obj *o, struct ecore_pending_mcast_cmd *cmd_pos,
 int *line_idx)
{
 cmd_pos->data.next_bin = o->hdl_restore(sc, o, cmd_pos->data.next_bin,
      line_idx);

 if (cmd_pos->data.next_bin < 0)

  cmd_pos->done = TRUE;
 else

  cmd_pos->data.next_bin++;
}
