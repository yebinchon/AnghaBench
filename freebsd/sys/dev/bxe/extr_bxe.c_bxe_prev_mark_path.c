
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bxe_softc {int pcie_device; int pcie_bus; } ;
struct bxe_prev_list_node {int undi; scalar_t__ aer; int path; int slot; int bus; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int ,int ,int ) ;
 int BLOGE (struct bxe_softc*,char*) ;
 int DBG_LOAD ;
 int LIST_INSERT_HEAD (int *,struct bxe_prev_list_node*,int ) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SC_PATH (struct bxe_softc*) ;
 int SC_PORT (struct bxe_softc*) ;
 int bxe_prev_list ;
 int bxe_prev_mtx ;
 struct bxe_prev_list_node* bxe_prev_path_get_entry (struct bxe_softc*) ;
 struct bxe_prev_list_node* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int node ;

__attribute__((used)) static int
bxe_prev_mark_path(struct bxe_softc *sc,
                   uint8_t after_undi)
{
    struct bxe_prev_list_node *tmp;

    mtx_lock(&bxe_prev_mtx);


    tmp = bxe_prev_path_get_entry(sc);
    if (tmp) {
        if (!tmp->aer) {
            BLOGD(sc, DBG_LOAD,
                  "Re-marking AER in path %d/%d/%d\n",
                  sc->pcie_bus, sc->pcie_device, SC_PATH(sc));
        } else {
            BLOGD(sc, DBG_LOAD,
                  "Removing AER indication from path %d/%d/%d\n",
                  sc->pcie_bus, sc->pcie_device, SC_PATH(sc));
            tmp->aer = 0;
        }

        mtx_unlock(&bxe_prev_mtx);
        return (0);
    }

    mtx_unlock(&bxe_prev_mtx);


    tmp = malloc(sizeof(struct bxe_prev_list_node), M_DEVBUF,
                 (M_NOWAIT | M_ZERO));
    if (!tmp) {
        BLOGE(sc, "Failed to allocate 'bxe_prev_list_node'\n");
        return (-1);
    }

    tmp->bus = sc->pcie_bus;
    tmp->slot = sc->pcie_device;
    tmp->path = SC_PATH(sc);
    tmp->aer = 0;
    tmp->undi = after_undi ? (1 << SC_PORT(sc)) : 0;

    mtx_lock(&bxe_prev_mtx);

    BLOGD(sc, DBG_LOAD,
          "Marked path %d/%d/%d - finished previous unload\n",
          sc->pcie_bus, sc->pcie_device, SC_PATH(sc));
    LIST_INSERT_HEAD(&bxe_prev_list, tmp, node);

    mtx_unlock(&bxe_prev_mtx);

    return (0);
}
