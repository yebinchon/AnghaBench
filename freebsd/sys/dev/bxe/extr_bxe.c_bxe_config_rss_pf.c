
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ecore_rss_config_obj {int ind_table; scalar_t__ udp_rss_v6; scalar_t__ udp_rss_v4; } ;
struct ecore_config_rss_params {int rss_flags; int * rss_key; int ind_table; int rss_result_mask; int ramrod_flags; struct ecore_rss_config_obj* rss_obj; int * member_0; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_RSS_IPV4 ;
 int ECORE_RSS_IPV4_TCP ;
 int ECORE_RSS_IPV4_UDP ;
 int ECORE_RSS_IPV6 ;
 int ECORE_RSS_IPV6_TCP ;
 int ECORE_RSS_IPV6_UDP ;
 int ECORE_RSS_MODE_REGULAR ;
 int ECORE_RSS_SET_SRCH ;
 int MULTI_MASK ;
 int RAMROD_COMP_WAIT ;
 int arc4random () ;
 int bxe_set_bit (int ,int *) ;
 int ecore_config_rss (struct bxe_softc*,struct ecore_config_rss_params*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int
bxe_config_rss_pf(struct bxe_softc *sc,
                  struct ecore_rss_config_obj *rss_obj,
                  uint8_t config_hash)
{
    struct ecore_config_rss_params params = { ((void*)0) };
    int i;






    params.rss_obj = rss_obj;

    bxe_set_bit(RAMROD_COMP_WAIT, &params.ramrod_flags);

    bxe_set_bit(ECORE_RSS_MODE_REGULAR, &params.rss_flags);


    bxe_set_bit(ECORE_RSS_IPV4, &params.rss_flags);
    bxe_set_bit(ECORE_RSS_IPV4_TCP, &params.rss_flags);
    bxe_set_bit(ECORE_RSS_IPV6, &params.rss_flags);
    bxe_set_bit(ECORE_RSS_IPV6_TCP, &params.rss_flags);
    if (rss_obj->udp_rss_v4) {
        bxe_set_bit(ECORE_RSS_IPV4_UDP, &params.rss_flags);
    }
    if (rss_obj->udp_rss_v6) {
        bxe_set_bit(ECORE_RSS_IPV6_UDP, &params.rss_flags);
    }


    params.rss_result_mask = MULTI_MASK;

    memcpy(params.ind_table, rss_obj->ind_table, sizeof(params.ind_table));

    if (config_hash) {

        for (i = 0; i < sizeof(params.rss_key) / 4; i++) {
            params.rss_key[i] = arc4random();
        }

        bxe_set_bit(ECORE_RSS_SET_SRCH, &params.rss_flags);
    }

    return (ecore_config_rss(sc, &params));
}
