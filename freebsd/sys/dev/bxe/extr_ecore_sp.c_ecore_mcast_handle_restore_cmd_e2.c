
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ecore_mcast_config_data {scalar_t__ bin; int * member_0; } ;
typedef scalar_t__ uint8_t ;
struct ecore_mcast_obj {int max_cmd_len; int (* set_one_rule ) (struct bxe_softc*,struct ecore_mcast_obj*,int,union ecore_mcast_config_data*,int ) ;} ;
struct bxe_softc {int dummy; } ;


 int ECORE_MCAST_CMD_RESTORE ;
 int ECORE_MSG (struct bxe_softc*,char*,int) ;
 int ecore_mcast_get_next_bin (struct ecore_mcast_obj*,int) ;
 int stub1 (struct bxe_softc*,struct ecore_mcast_obj*,int,union ecore_mcast_config_data*,int ) ;

__attribute__((used)) static inline int ecore_mcast_handle_restore_cmd_e2(
 struct bxe_softc *sc, struct ecore_mcast_obj *o , int start_bin,
 int *rdata_idx)
{
 int cur_bin, cnt = *rdata_idx;
 union ecore_mcast_config_data cfg_data = {((void*)0)};


 for (cur_bin = ecore_mcast_get_next_bin(o, start_bin); cur_bin >= 0;
     cur_bin = ecore_mcast_get_next_bin(o, cur_bin + 1)) {

  cfg_data.bin = (uint8_t)cur_bin;
  o->set_one_rule(sc, o, cnt, &cfg_data,
    ECORE_MCAST_CMD_RESTORE);

  cnt++;

  ECORE_MSG(sc, "About to configure a bin %d\n", cur_bin);




  if (cnt >= o->max_cmd_len)
   break;
 }

 *rdata_idx = cnt;

 return cur_bin;
}
