
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_dev_softc {struct cdev* sc_alias; struct cdev* sc_dev; } ;
struct g_consumer {struct g_dev_softc* private; } ;
struct cdev {int dummy; } ;


 int MAKEDEV_WAITOK ;
 int MAXPATHLEN ;
 int M_WAITOK ;
 int M_ZERO ;
 int destroy_dev (struct cdev*) ;
 scalar_t__ g_access (struct g_consumer*,int,int ,int ) ;
 int g_free (char*) ;
 int g_io_getattr (char*,struct g_consumer*,int*,char*) ;
 char* g_malloc (int,int) ;
 int make_dev_physpath_alias (int ,struct cdev**,struct cdev*,struct cdev*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
g_dev_set_physpath(struct g_consumer *cp)
{
 struct g_dev_softc *sc;
 char *physpath;
 int error, physpath_len;

 if (g_access(cp, 1, 0, 0) != 0)
  return;

 sc = cp->private;
 physpath_len = MAXPATHLEN;
 physpath = g_malloc(physpath_len, M_WAITOK|M_ZERO);
 error = g_io_getattr("GEOM::physpath", cp, &physpath_len, physpath);
 g_access(cp, -1, 0, 0);
 if (error == 0 && strlen(physpath) != 0) {
  struct cdev *dev, *old_alias_dev;
  struct cdev **alias_devp;

  dev = sc->sc_dev;
  old_alias_dev = sc->sc_alias;
  alias_devp = (struct cdev **)&sc->sc_alias;
  make_dev_physpath_alias(MAKEDEV_WAITOK, alias_devp, dev,
      old_alias_dev, physpath);
 } else if (sc->sc_alias) {
  destroy_dev((struct cdev *)sc->sc_alias);
  sc->sc_alias = ((void*)0);
 }
 g_free(physpath);
}
