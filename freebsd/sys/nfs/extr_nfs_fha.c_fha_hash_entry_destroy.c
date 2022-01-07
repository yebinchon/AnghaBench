
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fha_hash_entry {scalar_t__ num_rw; scalar_t__ num_exclusive; scalar_t__ num_threads; int mtx; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int M_NFS_FHA ;
 int free (struct fha_hash_entry*,int ) ;
 int mtx_assert (int ,int ) ;

__attribute__((used)) static void
fha_hash_entry_destroy(struct fha_hash_entry *e)
{

 mtx_assert(e->mtx, MA_OWNED);
 KASSERT(e->num_rw == 0,
     ("%d reqs on destroyed fhe %p", e->num_rw, e));
 KASSERT(e->num_exclusive == 0,
     ("%d exclusive reqs on destroyed fhe %p", e->num_exclusive, e));
 KASSERT(e->num_threads == 0,
     ("%d threads on destroyed fhe %p", e->num_threads, e));
 free(e, M_NFS_FHA);
}
