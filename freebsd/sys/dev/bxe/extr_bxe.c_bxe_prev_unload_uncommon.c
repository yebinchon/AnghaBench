
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*) ;
 int BXE_PREV_WAIT_NEEDED ;
 int DBG_LOAD ;
 int FW_MSG_CODE_DRV_LOAD_FUNCTION ;
 int bxe_do_flr (struct bxe_softc*) ;
 int bxe_nic_load_analyze_req (struct bxe_softc*,int ) ;
 scalar_t__ bxe_prev_is_path_marked (struct bxe_softc*) ;
 int bxe_prev_mcp_done (struct bxe_softc*) ;

__attribute__((used)) static int
bxe_prev_unload_uncommon(struct bxe_softc *sc)
{
    int rc;

    BLOGD(sc, DBG_LOAD, "Uncommon unload Flow\n");


    if (bxe_prev_is_path_marked(sc)) {
        return (bxe_prev_mcp_done(sc));
    }

    BLOGD(sc, DBG_LOAD, "Path is unmarked\n");






    rc = bxe_nic_load_analyze_req(sc, FW_MSG_CODE_DRV_LOAD_FUNCTION);
    if (!rc) {

        BLOGD(sc, DBG_LOAD, "FW version matches our own, attempting FLR\n");
        rc = bxe_do_flr(sc);
    }

    if (!rc) {

        BLOGD(sc, DBG_LOAD, "FLR successful\n");
        return (0);
    }

    BLOGD(sc, DBG_LOAD, "Could not FLR\n");


    rc = bxe_prev_mcp_done(sc);
    if (!rc) {
        rc = BXE_PREV_WAIT_NEEDED;
    }

    return (rc);
}
