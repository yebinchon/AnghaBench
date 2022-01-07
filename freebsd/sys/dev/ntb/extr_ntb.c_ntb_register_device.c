
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_child {int function; int mwoff; int mwcnt; int spadoff; int spadcnt; int dboff; int dbcnt; int dbmask; struct ntb_child* next; int * dev; int ctx_lock; } ;
typedef int device_t ;
typedef int cfg ;
typedef int buf ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int NTB_DB_VALID_MASK (int ) ;
 int NTB_MW_COUNT (int ) ;
 int NTB_SPAD_COUNT (int ) ;
 int TUNABLE_STR_FETCH (char*,char*,int) ;
 scalar_t__ bootverbose ;
 int bus_generic_attach (int ) ;
 int * device_add_child (int ,char*,int) ;
 char* device_get_name (int ) ;
 struct ntb_child** device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_ivars (int *,struct ntb_child*) ;
 int flsll (int ) ;
 struct ntb_child* malloc (int,int ,int) ;
 int ntb_unregister_device (int ) ;
 int printf (char*,...) ;
 int rm_init (int *,char*) ;
 int snprintf (char*,int,char*,char*,int) ;
 char* strsep (char**,char*) ;
 int strtol (char*,int *,int) ;

int
ntb_register_device(device_t dev)
{
 struct ntb_child **cpp = device_get_softc(dev);
 struct ntb_child *nc;
 int i, mw, mwu, mwt, spad, spadu, spadt, db, dbu, dbt;
 char cfg[128] = "";
 char buf[32];
 char *n, *np, *c, *p, *name;

 mwu = 0;
 mwt = NTB_MW_COUNT(dev);
 spadu = 0;
 spadt = NTB_SPAD_COUNT(dev);
 dbu = 0;
 dbt = flsll(NTB_DB_VALID_MASK(dev));

 device_printf(dev, "%d memory windows, %d scratchpads, "
     "%d doorbells\n", mwt, spadt, dbt);

 snprintf(buf, sizeof(buf), "hint.%s.%d.config", device_get_name(dev),
     device_get_unit(dev));
 TUNABLE_STR_FETCH(buf, cfg, sizeof(cfg));
 n = cfg;
 i = 0;
 while ((c = strsep(&n, ",")) != ((void*)0)) {
  np = c;
  name = strsep(&np, ":");
  if (name != ((void*)0) && name[0] == 0)
   name = ((void*)0);
  p = strsep(&np, ":");
  mw = (p && p[0] != 0) ? strtol(p, ((void*)0), 10) : mwt - mwu;
  p = strsep(&np, ":");
  spad = (p && p[0] != 0) ? strtol(p, ((void*)0), 10) : spadt - spadu;
  db = (np && np[0] != 0) ? strtol(np, ((void*)0), 10) : dbt - dbu;

  if (mw > mwt - mwu || spad > spadt - spadu || db > dbt - dbu) {
   device_printf(dev, "Not enough resources for config\n");
   break;
  }

  nc = malloc(sizeof(*nc), M_DEVBUF, M_WAITOK | M_ZERO);
  nc->function = i;
  nc->mwoff = mwu;
  nc->mwcnt = mw;
  nc->spadoff = spadu;
  nc->spadcnt = spad;
  nc->dboff = dbu;
  nc->dbcnt = db;
  nc->dbmask = (db == 0) ? 0 : (0xffffffffffffffff >> (64 - db));
  rm_init(&nc->ctx_lock, "ntb ctx");
  nc->dev = device_add_child(dev, name, -1);
  if (nc->dev == ((void*)0)) {
   ntb_unregister_device(dev);
   return (ENOMEM);
  }
  device_set_ivars(nc->dev, nc);
  *cpp = nc;
  cpp = &nc->next;

  if (bootverbose) {
   device_printf(dev, "%d \"%s\":", i, name);
   if (mw > 0) {
    printf(" memory windows %d", mwu);
    if (mw > 1)
     printf("-%d", mwu + mw - 1);
   }
   if (spad > 0) {
    printf(" scratchpads %d", spadu);
    if (spad > 1)
     printf("-%d", spadu + spad - 1);
   }
   if (db > 0) {
    printf(" doorbells %d", dbu);
    if (db > 1)
     printf("-%d", dbu + db - 1);
   }
   printf("\n");
  }

  mwu += mw;
  spadu += spad;
  dbu += db;
  i++;
 }

 bus_generic_attach(dev);
 return (0);
}
