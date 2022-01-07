
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {int sc_fi_zone; } ;
struct dtsec_rm_frame_info {int dummy; } ;


 int M_NOWAIT ;
 struct dtsec_rm_frame_info* uma_zalloc (int ,int ) ;

__attribute__((used)) static struct dtsec_rm_frame_info *
dtsec_rm_fi_alloc(struct dtsec_softc *sc)
{
 struct dtsec_rm_frame_info *fi;

 fi = uma_zalloc(sc->sc_fi_zone, M_NOWAIT);

 return (fi);
}
