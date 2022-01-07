
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct pf_state_key {int dummy; } ;
struct pf_state {int dummy; } ;
struct pf_srchash {int lock; } ;
struct pf_src_node {int dummy; } ;
struct pf_keyhash {int lock; } ;
struct pf_idhash {int lock; } ;
struct TYPE_2__ {void* zone; } ;


 int MTX_DEF ;
 int MTX_DUPOK ;
 int M_NOWAIT ;
 int M_PFHASH ;
 int M_WAITOK ;
 int M_ZERO ;
 int PFSNODE_HIWAT ;
 int PFSTATE_HIWAT ;
 scalar_t__ PF_HASHSIZ ;
 size_t PF_LIMIT_SRC_NODES ;
 size_t PF_LIMIT_STATES ;
 scalar_t__ PF_SRCHASHSIZ ;
 int SLIST_INIT (int *) ;
 int STAILQ_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,int ) ;
 int UMA_ALIGN_PTR ;
 int * V_pf_altq_ifs_active ;
 int * V_pf_altq_ifs_inactive ;
 int * V_pf_altqs ;
 int * V_pf_altqs_active ;
 int * V_pf_altqs_inactive ;
 int V_pf_hashseed ;
 struct pf_keyhash* V_pf_idhash ;
 struct pf_keyhash* V_pf_keyhash ;
 TYPE_1__* V_pf_limits ;
 int V_pf_overloadqueue ;
 int V_pf_overloadtask ;
 int V_pf_pabuf ;
 int V_pf_sendqueue ;
 void* V_pf_sources_z ;
 struct pf_srchash* V_pf_srchash ;
 void* V_pf_state_key_z ;
 void* V_pf_state_z ;
 int V_pf_unlinked_rules ;
 int arc4random () ;
 int curvnet ;
 int free (struct pf_keyhash*,int ) ;
 void* mallocarray (scalar_t__,int,int ,int) ;
 int mtx_init (int *,char*,int *,int) ;
 scalar_t__ pf_hashmask ;
 scalar_t__ pf_hashsize ;
 int pf_overload_task ;
 scalar_t__ pf_srchashmask ;
 scalar_t__ pf_srchashsize ;
 int * pf_state_key_ctor ;
 int powerof2 (scalar_t__) ;
 int printf (char*,scalar_t__) ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (void*,int ) ;
 int uma_zone_set_warning (void*,char*) ;

void
pf_initialize()
{
 struct pf_keyhash *kh;
 struct pf_idhash *ih;
 struct pf_srchash *sh;
 u_int i;

 if (pf_hashsize == 0 || !powerof2(pf_hashsize))
  pf_hashsize = PF_HASHSIZ;
 if (pf_srchashsize == 0 || !powerof2(pf_srchashsize))
  pf_srchashsize = PF_SRCHASHSIZ;

 V_pf_hashseed = arc4random();


 V_pf_state_z = uma_zcreate("pf states", sizeof(struct pf_state),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
 V_pf_limits[PF_LIMIT_STATES].zone = V_pf_state_z;
 uma_zone_set_max(V_pf_state_z, PFSTATE_HIWAT);
 uma_zone_set_warning(V_pf_state_z, "PF states limit reached");

 V_pf_state_key_z = uma_zcreate("pf state keys",
     sizeof(struct pf_state_key), pf_state_key_ctor, ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);

 V_pf_keyhash = mallocarray(pf_hashsize, sizeof(struct pf_keyhash),
     M_PFHASH, M_NOWAIT | M_ZERO);
 V_pf_idhash = mallocarray(pf_hashsize, sizeof(struct pf_idhash),
     M_PFHASH, M_NOWAIT | M_ZERO);
 if (V_pf_keyhash == ((void*)0) || V_pf_idhash == ((void*)0)) {
  printf("pf: Unable to allocate memory for "
      "state_hashsize %lu.\n", pf_hashsize);

  free(V_pf_keyhash, M_PFHASH);
  free(V_pf_idhash, M_PFHASH);

  pf_hashsize = PF_HASHSIZ;
  V_pf_keyhash = mallocarray(pf_hashsize,
      sizeof(struct pf_keyhash), M_PFHASH, M_WAITOK | M_ZERO);
  V_pf_idhash = mallocarray(pf_hashsize,
      sizeof(struct pf_idhash), M_PFHASH, M_WAITOK | M_ZERO);
 }

 pf_hashmask = pf_hashsize - 1;
 for (i = 0, kh = V_pf_keyhash, ih = V_pf_idhash; i <= pf_hashmask;
     i++, kh++, ih++) {
  mtx_init(&kh->lock, "pf_keyhash", ((void*)0), MTX_DEF | MTX_DUPOK);
  mtx_init(&ih->lock, "pf_idhash", ((void*)0), MTX_DEF);
 }


 V_pf_sources_z = uma_zcreate("pf source nodes",
     sizeof(struct pf_src_node), ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR,
     0);
 V_pf_limits[PF_LIMIT_SRC_NODES].zone = V_pf_sources_z;
 uma_zone_set_max(V_pf_sources_z, PFSNODE_HIWAT);
 uma_zone_set_warning(V_pf_sources_z, "PF source nodes limit reached");

 V_pf_srchash = mallocarray(pf_srchashsize,
     sizeof(struct pf_srchash), M_PFHASH, M_NOWAIT | M_ZERO);
 if (V_pf_srchash == ((void*)0)) {
  printf("pf: Unable to allocate memory for "
      "source_hashsize %lu.\n", pf_srchashsize);

  pf_srchashsize = PF_SRCHASHSIZ;
  V_pf_srchash = mallocarray(pf_srchashsize,
      sizeof(struct pf_srchash), M_PFHASH, M_WAITOK | M_ZERO);
 }

 pf_srchashmask = pf_srchashsize - 1;
 for (i = 0, sh = V_pf_srchash; i <= pf_srchashmask; i++, sh++)
  mtx_init(&sh->lock, "pf_srchash", ((void*)0), MTX_DEF);


 TAILQ_INIT(&V_pf_altqs[0]);
 TAILQ_INIT(&V_pf_altqs[1]);
 TAILQ_INIT(&V_pf_altqs[2]);
 TAILQ_INIT(&V_pf_altqs[3]);
 TAILQ_INIT(&V_pf_pabuf);
 V_pf_altqs_active = &V_pf_altqs[0];
 V_pf_altq_ifs_active = &V_pf_altqs[1];
 V_pf_altqs_inactive = &V_pf_altqs[2];
 V_pf_altq_ifs_inactive = &V_pf_altqs[3];


 STAILQ_INIT(&V_pf_sendqueue);
 SLIST_INIT(&V_pf_overloadqueue);
 TASK_INIT(&V_pf_overloadtask, 0, pf_overload_task, curvnet);


 TAILQ_INIT(&V_pf_unlinked_rules);
}
