
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {int sc_fi_zone; } ;
struct dtsec_rm_frame_info {int dummy; } ;


 int uma_zfree (int ,struct dtsec_rm_frame_info*) ;

__attribute__((used)) static void
dtsec_rm_fi_free(struct dtsec_softc *sc, struct dtsec_rm_frame_info *fi)
{

 uma_zfree(sc->sc_fi_zone, fi);
}
