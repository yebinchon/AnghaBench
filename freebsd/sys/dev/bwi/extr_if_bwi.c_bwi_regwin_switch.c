
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {struct bwi_regwin* sc_cur_regwin; int sc_dev; } ;
struct bwi_regwin {int rw_id; } ;


 int BWI_REGWIN_EXIST (struct bwi_regwin*) ;
 int EINVAL ;
 int bwi_regwin_select (struct bwi_softc*,int ) ;
 int device_printf (int ,char*,int ) ;

int
bwi_regwin_switch(struct bwi_softc *sc, struct bwi_regwin *rw,
    struct bwi_regwin **old_rw)
{
 int error;

 if (old_rw != ((void*)0))
  *old_rw = ((void*)0);

 if (!BWI_REGWIN_EXIST(rw))
  return EINVAL;

 if (sc->sc_cur_regwin != rw) {
  error = bwi_regwin_select(sc, rw->rw_id);
  if (error) {
   device_printf(sc->sc_dev, "can't select regwin %d\n",
      rw->rw_id);
   return error;
  }
 }

 if (old_rw != ((void*)0))
  *old_rw = sc->sc_cur_regwin;
 sc->sc_cur_regwin = rw;
 return 0;
}
