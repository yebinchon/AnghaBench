
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secashead {scalar_t__ state; int savtree_alive; int savtree_larval; } ;


 int IPSEC_ASSERT (int,char*) ;
 int M_IPSEC_SAH ;
 scalar_t__ SADB_SASTATE_DEAD ;
 int TAILQ_EMPTY (int *) ;
 int free (struct secashead*,int ) ;

__attribute__((used)) static void
key_delsah(struct secashead *sah)
{
 IPSEC_ASSERT(sah != ((void*)0), ("NULL sah"));
 IPSEC_ASSERT(sah->state == SADB_SASTATE_DEAD,
     ("Attempt to free non DEAD SAH %p", sah));
 IPSEC_ASSERT(TAILQ_EMPTY(&sah->savtree_larval),
     ("Attempt to free SAH %p with LARVAL SA", sah));
 IPSEC_ASSERT(TAILQ_EMPTY(&sah->savtree_alive),
     ("Attempt to free SAH %p with ALIVE SA", sah));

 free(sah, M_IPSEC_SAH);
}
