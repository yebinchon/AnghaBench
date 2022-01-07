
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int dummy; } ;
struct gv_sd {int name; } ;


 int GV_ERR_INVNAME ;
 int GV_ERR_NAMETAKEN ;
 scalar_t__ GV_ERR_NOTFOUND ;
 int G_VINUM_DEBUG (int,char*,char*) ;
 int KASSERT (int ,char*) ;
 scalar_t__ gv_object_type (struct gv_softc*,char*) ;
 char* strchr (char*,char) ;
 int strlcpy (int ,char*,int) ;

int
gv_rename_sd(struct gv_softc *sc, struct gv_sd *s, char *newname, int flags)
{
 char *dot1, *dot2;

 KASSERT(s != ((void*)0), ("gv_rename_sd: NULL s"));

 if (gv_object_type(sc, newname) != GV_ERR_NOTFOUND) {
  G_VINUM_DEBUG(1, "subdisk name %s already in use", newname);
  return (GV_ERR_NAMETAKEN);
 }


 dot1 = strchr(newname, '.');
 if (dot1 == ((void*)0) || (dot2 = strchr(dot1 + 1, '.')) == ((void*)0)) {
  G_VINUM_DEBUG(0, "proposed sd name '%s' is not a valid sd name",
      newname);
  return (GV_ERR_INVNAME);
 }
 strlcpy(s->name, newname, sizeof(s->name));
 return (0);
}
