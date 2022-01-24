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
typedef  scalar_t__ uint8_t ;
struct ecore_rss_config_obj {int /*<<< orphan*/  ind_table; scalar_t__ udp_rss_v6; scalar_t__ udp_rss_v4; } ;
struct ecore_config_rss_params {int /*<<< orphan*/  rss_flags; int /*<<< orphan*/ * rss_key; int /*<<< orphan*/  ind_table; int /*<<< orphan*/  rss_result_mask; int /*<<< orphan*/  ramrod_flags; struct ecore_rss_config_obj* rss_obj; int /*<<< orphan*/ * member_0; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECORE_RSS_IPV4 ; 
 int /*<<< orphan*/  ECORE_RSS_IPV4_TCP ; 
 int /*<<< orphan*/  ECORE_RSS_IPV4_UDP ; 
 int /*<<< orphan*/  ECORE_RSS_IPV6 ; 
 int /*<<< orphan*/  ECORE_RSS_IPV6_TCP ; 
 int /*<<< orphan*/  ECORE_RSS_IPV6_UDP ; 
 int /*<<< orphan*/  ECORE_RSS_MODE_REGULAR ; 
 int /*<<< orphan*/  ECORE_RSS_SET_SRCH ; 
 int /*<<< orphan*/  MULTI_MASK ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct bxe_softc*,struct ecore_config_rss_params*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct bxe_softc            *sc,
                  struct ecore_rss_config_obj *rss_obj,
                  uint8_t                     config_hash)
{
    struct ecore_config_rss_params params = { NULL };
    int i;

    /*
     * Although RSS is meaningless when there is a single HW queue we
     * still need it enabled in order to have HW Rx hash generated.
     */

    params.rss_obj = rss_obj;

    FUNC1(RAMROD_COMP_WAIT, &params.ramrod_flags);

    FUNC1(ECORE_RSS_MODE_REGULAR, &params.rss_flags);

    /* RSS configuration */
    FUNC1(ECORE_RSS_IPV4, &params.rss_flags);
    FUNC1(ECORE_RSS_IPV4_TCP, &params.rss_flags);
    FUNC1(ECORE_RSS_IPV6, &params.rss_flags);
    FUNC1(ECORE_RSS_IPV6_TCP, &params.rss_flags);
    if (rss_obj->udp_rss_v4) {
        FUNC1(ECORE_RSS_IPV4_UDP, &params.rss_flags);
    }
    if (rss_obj->udp_rss_v6) {
        FUNC1(ECORE_RSS_IPV6_UDP, &params.rss_flags);
    }

    /* Hash bits */
    params.rss_result_mask = MULTI_MASK;

    FUNC3(params.ind_table, rss_obj->ind_table, sizeof(params.ind_table));

    if (config_hash) {
        /* RSS keys */
        for (i = 0; i < sizeof(params.rss_key) / 4; i++) {
            params.rss_key[i] = FUNC0();
        }

        FUNC1(ECORE_RSS_SET_SRCH, &params.rss_flags);
    }

    return (FUNC2(sc, &params));
}