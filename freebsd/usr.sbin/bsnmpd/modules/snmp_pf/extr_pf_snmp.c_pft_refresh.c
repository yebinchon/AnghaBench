
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pft_entry {int index; int pft; } ;
struct pfr_tstats {int index; int pft; } ;
struct pfioc_table {int pfrio_esize; int pfrio_size; struct pft_entry* pfrio_buffer; } ;
typedef int io ;


 int DIOCRGETTSTATS ;
 int LOG_ERR ;
 int TAILQ_EMPTY (int *) ;
 struct pft_entry* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct pft_entry*,int ) ;
 int TAILQ_REMOVE (int *,struct pft_entry*,int ) ;
 int bzero (struct pfioc_table*,int) ;
 int dev ;
 int errno ;
 int free (struct pft_entry*) ;
 scalar_t__ ioctl (int ,int ,struct pfioc_table*) ;
 int link ;
 struct pft_entry* malloc (int) ;
 int memcpy (int *,struct pft_entry*,int) ;
 scalar_t__ pf_tick ;
 int pft_table ;
 int pft_table_age ;
 int pft_table_count ;
 struct pft_entry* reallocf (struct pft_entry*,int) ;
 scalar_t__ started ;
 int strerror (int ) ;
 int syslog (int ,char*,int,...) ;
 scalar_t__ this_tick ;
 int time (int *) ;

__attribute__((used)) static int
pft_refresh(void)
{
 struct pfioc_table io;
 struct pfr_tstats *t = ((void*)0);
 struct pft_entry *e;
 int i, numtbls = 1;

 if (started && this_tick <= pf_tick)
  return (0);

 while (!TAILQ_EMPTY(&pft_table)) {
  e = TAILQ_FIRST(&pft_table);
  TAILQ_REMOVE(&pft_table, e, link);
  free(e);
 }

 bzero(&io, sizeof(io));
 io.pfrio_esize = sizeof(struct pfr_tstats);

 for (;;) {
  t = reallocf(t, numtbls * sizeof(struct pfr_tstats));
  if (t == ((void*)0)) {
   syslog(LOG_ERR, "pft_refresh(): reallocf() numtbls=%d: %s",
       numtbls, strerror(errno));
   goto err2;
  }
  io.pfrio_size = numtbls;
  io.pfrio_buffer = t;

  if (ioctl(dev, DIOCRGETTSTATS, &io)) {
   syslog(LOG_ERR, "pft_refresh(): ioctl(): %s",
       strerror(errno));
   goto err2;
  }

  if (numtbls >= io.pfrio_size)
   break;

  numtbls = io.pfrio_size;
 }

 for (i = 0; i < numtbls; i++) {
  e = malloc(sizeof(struct pft_entry));
  if (e == ((void*)0))
   goto err1;
  e->index = i + 1;
  memcpy(&e->pft, t+i, sizeof(struct pfr_tstats));
  TAILQ_INSERT_TAIL(&pft_table, e, link);
 }

 pft_table_age = time(((void*)0));
 pft_table_count = numtbls;
 pf_tick = this_tick;

 free(t);
 return (0);
err1:
 while (!TAILQ_EMPTY(&pft_table)) {
  e = TAILQ_FIRST(&pft_table);
  TAILQ_REMOVE(&pft_table, e, link);
  free(e);
 }
err2:
 free(t);
 return(-1);
}
