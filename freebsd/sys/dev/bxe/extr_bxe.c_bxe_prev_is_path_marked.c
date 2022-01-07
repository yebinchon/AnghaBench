
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int pcie_device; int pcie_bus; } ;
struct bxe_prev_list_node {scalar_t__ aer; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int ,int ,int ) ;
 int DBG_LOAD ;
 int FALSE ;
 int SC_PATH (struct bxe_softc*) ;
 int TRUE ;
 int bxe_prev_mtx ;
 struct bxe_prev_list_node* bxe_prev_path_get_entry (struct bxe_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static uint8_t
bxe_prev_is_path_marked(struct bxe_softc *sc)
{
    struct bxe_prev_list_node *tmp;
    int rc = FALSE;

    mtx_lock(&bxe_prev_mtx);

    tmp = bxe_prev_path_get_entry(sc);
    if (tmp) {
        if (tmp->aer) {
            BLOGD(sc, DBG_LOAD,
                  "Path %d/%d/%d was marked by AER\n",
                  sc->pcie_bus, sc->pcie_device, SC_PATH(sc));
        } else {
            rc = TRUE;
            BLOGD(sc, DBG_LOAD,
                  "Path %d/%d/%d was already cleaned from previous drivers\n",
                  sc->pcie_bus, sc->pcie_device, SC_PATH(sc));
        }
    }

    mtx_unlock(&bxe_prev_mtx);

    return (rc);
}
