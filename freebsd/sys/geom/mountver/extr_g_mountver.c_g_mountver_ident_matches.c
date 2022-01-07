
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mountver_softc {int sc_ident; } ;
struct g_geom {int name; int consumer; struct g_mountver_softc* softc; } ;
struct g_consumer {int dummy; } ;


 int DISK_IDENT_SIZE ;
 int G_MOUNTVER_DEBUG (int,char*,int ,...) ;
 struct g_consumer* LIST_FIRST (int *) ;
 int g_access (struct g_consumer*,int,int ,int ) ;
 int g_io_getattr (char*,struct g_consumer*,int*,char*) ;
 scalar_t__ g_mountver_check_ident ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
g_mountver_ident_matches(struct g_geom *gp)
{
 struct g_consumer *cp;
 struct g_mountver_softc *sc;
 char ident[DISK_IDENT_SIZE];
 int error, identsize = DISK_IDENT_SIZE;

 sc = gp->softc;
 cp = LIST_FIRST(&gp->consumer);

 if (g_mountver_check_ident == 0)
  return (0);

 error = g_access(cp, 1, 0, 0);
 if (error != 0) {
  G_MOUNTVER_DEBUG(0, "Cannot access %s; "
      "not attaching; error = %d.", gp->name, error);
  return (1);
 }
 error = g_io_getattr("GEOM::ident", cp, &identsize, ident);
 g_access(cp, -1, 0, 0);
 if (error != 0) {
  G_MOUNTVER_DEBUG(0, "Cannot get disk ident for %s; "
      "not attaching; error = %d.", gp->name, error);
  return (1);
 }
 if (strcmp(ident, sc->sc_ident) != 0) {
  G_MOUNTVER_DEBUG(1, "Disk ident for %s (\"%s\") is different "
      "from expected \"%s\", not attaching.", gp->name, ident,
      sc->sc_ident);
  return (1);
 }

 return (0);
}
