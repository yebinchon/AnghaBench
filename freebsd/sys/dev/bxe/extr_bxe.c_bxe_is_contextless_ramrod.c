
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES ;
 int RAMROD_CMD_ID_ETH_FILTER_RULES ;
 int RAMROD_CMD_ID_ETH_FORWARD_SETUP ;
 int RAMROD_CMD_ID_ETH_MULTICAST_RULES ;
 int RAMROD_CMD_ID_ETH_RSS_UPDATE ;
 int RAMROD_CMD_ID_ETH_SET_MAC ;
 int TRUE ;

__attribute__((used)) static inline
int bxe_is_contextless_ramrod(int cmd,
                              int cmd_type)
{
    if ((cmd_type == NONE_CONNECTION_TYPE) ||
        (cmd == RAMROD_CMD_ID_ETH_FORWARD_SETUP) ||
        (cmd == RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES) ||
        (cmd == RAMROD_CMD_ID_ETH_FILTER_RULES) ||
        (cmd == RAMROD_CMD_ID_ETH_MULTICAST_RULES) ||
        (cmd == RAMROD_CMD_ID_ETH_SET_MAC) ||
        (cmd == RAMROD_CMD_ID_ETH_RSS_UPDATE)) {
        return (TRUE);
    } else {
        return (FALSE);
    }
}
