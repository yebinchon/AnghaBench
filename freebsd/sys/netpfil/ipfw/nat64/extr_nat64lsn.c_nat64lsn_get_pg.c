
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nat64lsn_pgchunk {struct nat64lsn_pg** pgptr; } ;
struct nat64lsn_pg {int dummy; } ;
typedef int in_addr_t ;


 scalar_t__ FREEMASK_BITCOUNT (struct nat64lsn_pg*,int ) ;
 scalar_t__ ISSET32 (int,int) ;
 int NAT64LSN_TRY_PGCNT ;
 int ck_pr_cas_32 (int*,int,int) ;
 int ck_pr_cas_ptr (struct nat64lsn_pg**,struct nat64lsn_pg*,struct nat64lsn_pg*) ;
 int ck_pr_fence_load () ;
 int ck_pr_load_32 (int*) ;
 struct nat64lsn_pg* ck_pr_load_ptr (struct nat64lsn_pg**) ;

__attribute__((used)) static struct nat64lsn_pg*
nat64lsn_get_pg(uint32_t *chunkmask, uint32_t *pgmask,
    struct nat64lsn_pgchunk **chunks, struct nat64lsn_pg **pgptr,
    uint32_t *pgidx, in_addr_t faddr)
{
 struct nat64lsn_pg *pg, *oldpg;
 uint32_t idx, oldidx;
 int cnt;

 cnt = 0;

 oldpg = pg = ck_pr_load_ptr(pgptr);
 idx = oldidx = ck_pr_load_32(pgidx);

 if (!ISSET32(*chunkmask, idx / 32))
  idx = 0;
 do {
  ck_pr_fence_load();
  if (pg != ((void*)0) && FREEMASK_BITCOUNT(pg, faddr) > 0) {






   if (cnt > 0)
    ck_pr_cas_ptr(pgptr, oldpg, pg);
   return (pg);
  }

  if (!ISSET32(*chunkmask, idx / 32))
   break;

  if (ISSET32(pgmask[idx / 32], idx % 32))
   pg = ck_pr_load_ptr(
       &chunks[idx / 32]->pgptr[idx % 32]);
  else
   pg = ((void*)0);

  idx++;
 } while (++cnt < NAT64LSN_TRY_PGCNT);


 if (!ISSET32(*chunkmask, idx / 32))
  idx = 0;
 ck_pr_cas_32(pgidx, oldidx, idx);
 return (((void*)0));
}
