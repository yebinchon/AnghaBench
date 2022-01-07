
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int rss_conf_obj; } ;


 int bxe_config_rss_pf (struct bxe_softc*,int *,int ) ;

__attribute__((used)) static int
bxe_config_rss_eth(struct bxe_softc *sc,
                   uint8_t config_hash)
{
    return (bxe_config_rss_pf(sc, &sc->rss_conf_obj, config_hash));
}
