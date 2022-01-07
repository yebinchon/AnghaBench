
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mprsas_softc {struct mpr_softc* sc; } ;
struct mpr_softc {char* exclude_ids; } ;


 char* strsep (char**,char*) ;
 long strtol (char*,int *,int ) ;

int
mprsas_check_id(struct mprsas_softc *sassc, int id)
{
 struct mpr_softc *sc = sassc->sc;
 char *ids;
 char *name;

 ids = &sc->exclude_ids[0];
 while((name = strsep(&ids, ",")) != ((void*)0)) {
  if (name[0] == '\0')
   continue;
  if (strtol(name, ((void*)0), 0) == (long)id)
   return (1);
 }

 return (0);
}
