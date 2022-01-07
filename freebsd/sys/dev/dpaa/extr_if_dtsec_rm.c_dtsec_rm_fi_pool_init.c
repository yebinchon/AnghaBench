
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {int * sc_fi_zone; int sc_fi_zname; int sc_dev; } ;
struct dtsec_rm_frame_info {int dummy; } ;


 int EIO ;
 int UMA_ALIGN_PTR ;
 char* device_get_nameunit (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int * uma_zcreate (int ,int,int *,int *,int *,int *,int ,int ) ;

int
dtsec_rm_fi_pool_init(struct dtsec_softc *sc)
{

 snprintf(sc->sc_fi_zname, sizeof(sc->sc_fi_zname), "%s: Frame Info",
     device_get_nameunit(sc->sc_dev));

 sc->sc_fi_zone = uma_zcreate(sc->sc_fi_zname,
     sizeof(struct dtsec_rm_frame_info), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 if (sc->sc_fi_zone == ((void*)0))
  return (EIO);

 return (0);
}
