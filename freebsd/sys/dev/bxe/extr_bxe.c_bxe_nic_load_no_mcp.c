
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int BLOGI (struct bxe_softc*,char*,int,int,int,int) ;
 int FW_MSG_CODE_DRV_LOAD_COMMON ;
 int FW_MSG_CODE_DRV_LOAD_FUNCTION ;
 int FW_MSG_CODE_DRV_LOAD_PORT ;
 int SC_PATH (struct bxe_softc*) ;
 int SC_PORT (struct bxe_softc*) ;
 int** load_count ;

__attribute__((used)) static int
bxe_nic_load_no_mcp(struct bxe_softc *sc)
{
    int path = SC_PATH(sc);
    int port = SC_PORT(sc);

    BLOGI(sc, "NO MCP - load counts[%d]      %d, %d, %d\n",
          path, load_count[path][0], load_count[path][1],
          load_count[path][2]);
    load_count[path][0]++;
    load_count[path][1 + port]++;
    BLOGI(sc, "NO MCP - new load counts[%d]  %d, %d, %d\n",
          path, load_count[path][0], load_count[path][1],
          load_count[path][2]);
    if (load_count[path][0] == 1) {
        return (FW_MSG_CODE_DRV_LOAD_COMMON);
    } else if (load_count[path][1 + port] == 1) {
        return (FW_MSG_CODE_DRV_LOAD_PORT);
    } else {
        return (FW_MSG_CODE_DRV_LOAD_FUNCTION);
    }
}
