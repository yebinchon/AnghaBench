
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int getspi_count; } ;


 int ACQHASH_NHASH ;
 int ACQ_LOCK_INIT () ;
 int IPSEC_DIR_MAX ;
 int IS_DEFAULT_VNET (int ) ;
 int LIST_INIT (int *) ;
 int M_IPSEC_SA ;
 int M_IPSEC_SAH ;
 int M_IPSEC_SAQ ;
 int M_IPSEC_SP ;
 int REGTREE_LOCK_INIT () ;
 int SADB_SATYPE_MAX ;
 int SAHHASH_NHASH ;
 int SAHTREE_LOCK_INIT () ;
 int SAVHASH_NHASH ;
 int SPACQ_LOCK_INIT () ;
 int SPHASH_NHASH ;
 int SPTREE_LOCK_INIT () ;
 int TAILQ_INIT (int *) ;
 int UMA_ALIGN_PTR ;
 int UMA_ZONE_PCPU ;
 int V_acqaddrhash_mask ;
 void* V_acqaddrhashtbl ;
 int V_acqseqhash_mask ;
 void* V_acqseqhashtbl ;
 int V_acqtree ;
 int V_key_lft_zone ;
 int * V_regtree ;
 int V_sahaddrhash_mask ;
 void* V_sahaddrhashtbl ;
 int V_sahtree ;
 int V_savhash_mask ;
 void* V_savhashtbl ;
 int V_spacqtree ;
 int V_sphash_mask ;
 void* V_sphashtbl ;
 int * V_sptree ;
 int * V_sptree_ifnet ;
 scalar_t__ bootverbose ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int ,int ,int *) ;
 int curvnet ;
 void* hashinit (int ,int ,int *) ;
 int hz ;
 int key_timehandler ;
 int key_timer ;
 TYPE_1__ keystat ;
 int printf (char*) ;
 int spdcache_init () ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

void
key_init(void)
{
 int i;

 for (i = 0; i < IPSEC_DIR_MAX; i++) {
  TAILQ_INIT(&V_sptree[i]);
  TAILQ_INIT(&V_sptree_ifnet[i]);
 }

 V_key_lft_zone = uma_zcreate("IPsec SA lft_c",
     sizeof(uint64_t) * 2, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, UMA_ZONE_PCPU);

 TAILQ_INIT(&V_sahtree);
 V_sphashtbl = hashinit(SPHASH_NHASH, M_IPSEC_SP, &V_sphash_mask);
 V_savhashtbl = hashinit(SAVHASH_NHASH, M_IPSEC_SA, &V_savhash_mask);
 V_sahaddrhashtbl = hashinit(SAHHASH_NHASH, M_IPSEC_SAH,
     &V_sahaddrhash_mask);
 V_acqaddrhashtbl = hashinit(ACQHASH_NHASH, M_IPSEC_SAQ,
     &V_acqaddrhash_mask);
 V_acqseqhashtbl = hashinit(ACQHASH_NHASH, M_IPSEC_SAQ,
     &V_acqseqhash_mask);

 spdcache_init();

 for (i = 0; i <= SADB_SATYPE_MAX; i++)
  LIST_INIT(&V_regtree[i]);

 LIST_INIT(&V_acqtree);
 LIST_INIT(&V_spacqtree);

 if (!IS_DEFAULT_VNET(curvnet))
  return;

 SPTREE_LOCK_INIT();
 REGTREE_LOCK_INIT();
 SAHTREE_LOCK_INIT();
 ACQ_LOCK_INIT();
 SPACQ_LOCK_INIT();


 callout_init(&key_timer, 1);
 callout_reset(&key_timer, hz, key_timehandler, ((void*)0));



 keystat.getspi_count = 1;

 if (bootverbose)
  printf("IPsec: Initialized Security Association Processing.\n");
}
