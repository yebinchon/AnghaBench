#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ecore_mcast_ramrod_params {int mcast_list_len; int /*<<< orphan*/  mcast_list; } ;
struct ecore_mcast_list_elem {int /*<<< orphan*/ * mac; int /*<<< orphan*/  link; } ;
struct bxe_softc {int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  bxe_push_maddr ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_mcast_list_elem*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_mcast_list_elem*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct ecore_mcast_list_elem* FUNC7 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct bxe_softc                 *sc,
                         struct ecore_mcast_ramrod_params *p)
{
    if_t ifp = sc->ifp;
    int mc_count;
    struct ecore_mcast_list_elem *mc_mac;

    FUNC2(&p->mcast_list);
    p->mcast_list_len = 0;

    /* XXXGL: multicast count may change later */
    mc_count = FUNC6(ifp);

    if (!mc_count) {
        return (0);
    }

    mc_mac = FUNC7(sizeof(*mc_mac) * mc_count, M_DEVBUF,
                    (M_NOWAIT | M_ZERO));
    if (!mc_mac) {
        FUNC1(sc, "Failed to allocate temp mcast list\n");
        return (-1);
    }
    FUNC4(mc_mac, (sizeof(*mc_mac) * mc_count));
    FUNC5(ifp, bxe_push_maddr, mc_mac);

    for (int i = 0; i < mc_count; i ++) {
        FUNC3(&mc_mac[i].link, &p->mcast_list);
        FUNC0(sc, DBG_LOAD,
              "Setting MCAST %02X:%02X:%02X:%02X:%02X:%02X and mc_count %d\n",
              mc_mac[i].mac[0], mc_mac[i].mac[1], mc_mac[i].mac[2],
              mc_mac[i].mac[3], mc_mac[i].mac[4], mc_mac[i].mac[5],
              mc_count);
    }

    p->mcast_list_len = mc_count;

    return (0);
}