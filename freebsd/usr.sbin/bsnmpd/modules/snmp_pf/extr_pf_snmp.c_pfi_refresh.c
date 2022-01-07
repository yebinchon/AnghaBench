
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfioc_iface {int pfiio_esize; int pfiio_size; struct pfi_kif* pfiio_buffer; } ;
struct pfi_kif {int index; int pfi; } ;
struct pfi_entry {int index; int pfi; } ;
typedef int io ;


 int DIOCIGETIFACES ;
 int LOG_ERR ;
 int TAILQ_EMPTY (int *) ;
 struct pfi_kif* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct pfi_kif*,int ) ;
 int TAILQ_REMOVE (int *,struct pfi_kif*,int ) ;
 int bzero (struct pfioc_iface*,int) ;
 int dev ;
 int errno ;
 int free (struct pfi_kif*) ;
 scalar_t__ ioctl (int ,int ,struct pfioc_iface*) ;
 int link ;
 struct pfi_kif* malloc (int) ;
 int memcpy (int *,struct pfi_kif*,int) ;
 scalar_t__ pf_tick ;
 int pfi_table ;
 int pfi_table_age ;
 int pfi_table_count ;
 struct pfi_kif* reallocf (struct pfi_kif*,int) ;
 scalar_t__ started ;
 int strerror (int ) ;
 int syslog (int ,char*,int,...) ;
 scalar_t__ this_tick ;
 int time (int *) ;

__attribute__((used)) static int
pfi_refresh(void)
{
 struct pfioc_iface io;
 struct pfi_kif *p = ((void*)0);
 struct pfi_entry *e;
 int i, numifs = 1;

 if (started && this_tick <= pf_tick)
  return (0);

 while (!TAILQ_EMPTY(&pfi_table)) {
  e = TAILQ_FIRST(&pfi_table);
  TAILQ_REMOVE(&pfi_table, e, link);
  free(e);
 }

 bzero(&io, sizeof(io));
 io.pfiio_esize = sizeof(struct pfi_kif);

 for (;;) {
  p = reallocf(p, numifs * sizeof(struct pfi_kif));
  if (p == ((void*)0)) {
   syslog(LOG_ERR, "pfi_refresh(): reallocf() numifs=%d: %s",
       numifs, strerror(errno));
   goto err2;
  }
  io.pfiio_size = numifs;
  io.pfiio_buffer = p;

  if (ioctl(dev, DIOCIGETIFACES, &io)) {
   syslog(LOG_ERR, "pfi_refresh(): ioctl(): %s",
       strerror(errno));
   goto err2;
  }

  if (numifs >= io.pfiio_size)
   break;

  numifs = io.pfiio_size;
 }

 for (i = 0; i < numifs; i++) {
  e = malloc(sizeof(struct pfi_entry));
  if (e == ((void*)0))
   goto err1;
  e->index = i + 1;
  memcpy(&e->pfi, p+i, sizeof(struct pfi_kif));
  TAILQ_INSERT_TAIL(&pfi_table, e, link);
 }

 pfi_table_age = time(((void*)0));
 pfi_table_count = numifs;
 pf_tick = this_tick;

 free(p);
 return (0);

err1:
 while (!TAILQ_EMPTY(&pfi_table)) {
  e = TAILQ_FIRST(&pfi_table);
  TAILQ_REMOVE(&pfi_table, e, link);
  free(e);
 }
err2:
 free(p);
 return(-1);
}
