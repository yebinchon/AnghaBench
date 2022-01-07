
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct targ {int fd; int used; int me; int affinity; int thread; int frags; struct nm_desc* nmd; struct glob_arg* g; int seed; } ;
struct TYPE_2__ {int nr_flags; int nr_ringid; } ;
struct nm_desc {int fd; TYPE_1__ req; struct nm_desc* self; } ;
struct glob_arg {int nthreads; scalar_t__ dev_type; scalar_t__ td_type; int ifname; int main_fd; int affinity; int cpus; int td_body; int wait_link; int frags; struct nm_desc* nmd; } ;


 int D (char*,...) ;
 scalar_t__ DEV_NETMAP ;
 int NETMAP_NO_TX_POLL ;
 int NM_OPEN_IFNAME ;
 int NM_OPEN_NO_MMAP ;
 int NR_REG_MASK ;
 int NR_REG_ONE_NIC ;
 scalar_t__ TD_TYPE_RECEIVER ;
 int bzero (struct targ*,int) ;
 struct targ* calloc (int,int) ;
 int errno ;
 int initialize_packet (struct targ*) ;
 int memcpy (int ,int*,int) ;
 struct nm_desc* nm_open (int,int *,int,struct nm_desc*) ;
 int pthread_create (int *,int *,int ,struct targ*) ;
 int sleep (int ) ;
 int strerror (int ) ;
 struct targ* targs ;
 int time (int ) ;

__attribute__((used)) static void
start_threads(struct glob_arg *g) {
 int i;

 targs = calloc(g->nthreads, sizeof(*targs));
 struct targ *t;




 for (i = 0; i < g->nthreads; i++) {
  uint64_t seed = time(0) | (time(0) << 32);
  t = &targs[i];

  bzero(t, sizeof(*t));
  t->fd = -1;
  t->g = g;
  memcpy(t->seed, &seed, sizeof(t->seed));

  if (g->dev_type == DEV_NETMAP) {
   struct nm_desc nmd = *g->nmd;
   uint64_t nmd_flags = 0;
   nmd.self = &nmd;

   if (i > 0) {



    if (g->nthreads > 1) {
     nmd.req.nr_flags =
      g->nmd->req.nr_flags & ~NR_REG_MASK;
     nmd.req.nr_flags |= NR_REG_ONE_NIC;
     nmd.req.nr_ringid = i;
    }

    if (g->td_type == TD_TYPE_RECEIVER)
     nmd_flags |= NETMAP_NO_TX_POLL;


    t->nmd = nm_open(t->g->ifname, ((void*)0), nmd_flags |
      NM_OPEN_IFNAME | NM_OPEN_NO_MMAP, &nmd);
    if (t->nmd == ((void*)0)) {
     D("Unable to open %s: %s",
       t->g->ifname, strerror(errno));
     continue;
    }
   } else {
    t->nmd = g->nmd;
   }
   t->fd = t->nmd->fd;
   t->frags = g->frags;
  } else {
   targs[i].fd = g->main_fd;
  }
  t->used = 1;
  t->me = i;
  if (g->affinity >= 0) {
   t->affinity = (g->affinity + i) % g->cpus;
  } else {
   t->affinity = -1;
  }

  initialize_packet(t);
 }

 D("Wait %d secs for phy reset", g->wait_link);
 sleep(g->wait_link);
 D("Ready...");

 for (i = 0; i < g->nthreads; i++) {
  t = &targs[i];
  if (pthread_create(&t->thread, ((void*)0), g->td_body, t) == -1) {
   D("Unable to create thread %d: %s", i, strerror(errno));
   t->used = 0;
  }
 }
}
