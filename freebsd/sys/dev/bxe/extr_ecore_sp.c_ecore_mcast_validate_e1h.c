
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_mcast_ramrod_params {int mcast_list_len; } ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_mcast_cmd { ____Placeholder_ecore_mcast_cmd } ecore_mcast_cmd ;


 int ECORE_MCAST_CMD_DEL ;
 int ECORE_MCAST_CMD_RESTORE ;
 int ECORE_SUCCESS ;

__attribute__((used)) static int ecore_mcast_validate_e1h(struct bxe_softc *sc,
        struct ecore_mcast_ramrod_params *p,
        enum ecore_mcast_cmd cmd)
{

 if ((cmd == ECORE_MCAST_CMD_DEL) || (cmd == ECORE_MCAST_CMD_RESTORE))
  p->mcast_list_len = 1;

 return ECORE_SUCCESS;
}
