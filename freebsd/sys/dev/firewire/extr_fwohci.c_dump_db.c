
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fwohcidb_tr {int bus_addr; struct fwohcidb* db; } ;
struct fwohcidb {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct fwohci_dbch {int ndb; int ndesc; struct fwohcidb_tr* top; } ;
struct fwohci_softc {TYPE_1__ fc; struct fwohci_dbch* ir; struct fwohci_dbch* it; struct fwohci_dbch arrs; struct fwohci_dbch arrq; struct fwohci_dbch atrs; struct fwohci_dbch atrq; } ;


 int IRX_CH ;
 int ITX_CH ;
 int OHCI_ARQOFF ;
 int OHCI_ARSOFF ;
 int OHCI_ATQOFF ;
 int OHCI_ATSOFF ;
 int OHCI_IRCTL (int ) ;
 int OHCI_ITCTL (int ) ;
 int OREAD (struct fwohci_softc*,int) ;
 struct fwohcidb_tr* STAILQ_NEXT (struct fwohcidb_tr*,int ) ;
 int device_printf (int ,char*,int) ;
 int link ;
 int print_db (struct fwohcidb_tr*,struct fwohcidb*,int,int) ;
 int printf (char*,int,...) ;

void
dump_db(struct fwohci_softc *sc, uint32_t ch)
{
 struct fwohci_dbch *dbch;
 struct fwohcidb_tr *cp = ((void*)0), *pp, *np = ((void*)0);
 struct fwohcidb *curr = ((void*)0), *prev, *next = ((void*)0);
 int idb, jdb;
 uint32_t cmd, off;

 if (ch == 0) {
  off = OHCI_ATQOFF;
  dbch = &sc->atrq;
 } else if (ch == 1) {
  off = OHCI_ATSOFF;
  dbch = &sc->atrs;
 } else if (ch == 2) {
  off = OHCI_ARQOFF;
  dbch = &sc->arrq;
 } else if (ch == 3) {
  off = OHCI_ARSOFF;
  dbch = &sc->arrs;
 } else if (ch < IRX_CH) {
  off = OHCI_ITCTL(ch - ITX_CH);
  dbch = &sc->it[ch - ITX_CH];
 } else {
  off = OHCI_IRCTL(ch - IRX_CH);
  dbch = &sc->ir[ch - IRX_CH];
 }
 cmd = OREAD(sc, off + 0xc);

 if (dbch->ndb == 0) {
  device_printf(sc->fc.dev, "No DB is attached ch=%d\n", ch);
  return;
 }
 pp = dbch->top;
 prev = pp->db;
 for (idb = 0; idb < dbch->ndb; idb++) {
  cp = STAILQ_NEXT(pp, link);
  if (cp == ((void*)0)) {
   curr = ((void*)0);
   goto outdb;
  }
  np = STAILQ_NEXT(cp, link);
  for (jdb = 0; jdb < dbch->ndesc; jdb++) {
   if ((cmd & 0xfffffff0) == cp->bus_addr) {
    curr = cp->db;
    if (np != ((void*)0)) {
     next = np->db;
    } else {
     next = ((void*)0);
    }
    goto outdb;
   }
  }
  pp = STAILQ_NEXT(pp, link);
  if (pp == ((void*)0)) {
   curr = ((void*)0);
   goto outdb;
  }
  prev = pp->db;
 }
outdb:
 if (curr != ((void*)0)) {




  printf("Current DB %d\n", ch);
  print_db(cp, curr, ch, dbch->ndesc);




 } else {
  printf("dbdump err ch = %d cmd = 0x%08x\n", ch, cmd);
 }
 return;
}
