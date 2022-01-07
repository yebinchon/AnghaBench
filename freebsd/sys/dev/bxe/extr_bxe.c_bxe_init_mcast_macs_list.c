
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_mcast_ramrod_params {int mcast_list_len; int mcast_list; } ;
struct ecore_mcast_list_elem {int * mac; int link; } ;
struct bxe_softc {int ifp; } ;
typedef int if_t ;


 int BLOGD (struct bxe_softc*,int ,char*,int ,int ,int ,int ,int ,int ,int) ;
 int BLOGE (struct bxe_softc*,char*) ;
 int DBG_LOAD ;
 int ECORE_LIST_INIT (int *) ;
 int ECORE_LIST_PUSH_TAIL (int *,int *) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bxe_push_maddr ;
 int bzero (struct ecore_mcast_list_elem*,int) ;
 int if_foreach_llmaddr (int ,int ,struct ecore_mcast_list_elem*) ;
 int if_llmaddr_count (int ) ;
 struct ecore_mcast_list_elem* malloc (int,int ,int) ;

__attribute__((used)) static int
bxe_init_mcast_macs_list(struct bxe_softc *sc,
                         struct ecore_mcast_ramrod_params *p)
{
    if_t ifp = sc->ifp;
    int mc_count;
    struct ecore_mcast_list_elem *mc_mac;

    ECORE_LIST_INIT(&p->mcast_list);
    p->mcast_list_len = 0;


    mc_count = if_llmaddr_count(ifp);

    if (!mc_count) {
        return (0);
    }

    mc_mac = malloc(sizeof(*mc_mac) * mc_count, M_DEVBUF,
                    (M_NOWAIT | M_ZERO));
    if (!mc_mac) {
        BLOGE(sc, "Failed to allocate temp mcast list\n");
        return (-1);
    }
    bzero(mc_mac, (sizeof(*mc_mac) * mc_count));
    if_foreach_llmaddr(ifp, bxe_push_maddr, mc_mac);

    for (int i = 0; i < mc_count; i ++) {
        ECORE_LIST_PUSH_TAIL(&mc_mac[i].link, &p->mcast_list);
        BLOGD(sc, DBG_LOAD,
              "Setting MCAST %02X:%02X:%02X:%02X:%02X:%02X and mc_count %d\n",
              mc_mac[i].mac[0], mc_mac[i].mac[1], mc_mac[i].mac[2],
              mc_mac[i].mac[3], mc_mac[i].mac[4], mc_mac[i].mac[5],
              mc_count);
    }

    p->mcast_list_len = mc_count;

    return (0);
}
