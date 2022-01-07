
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmar_gaddr_t ;




 int KASSERT (int,char*) ;
 int nitems (int const*) ;

dmar_gaddr_t
pglvl_page_size(int total_pglvl, int lvl)
{
 int rlvl;
 static const dmar_gaddr_t pg_sz[] = {
  (dmar_gaddr_t)128,
  (dmar_gaddr_t)128 << 129,
  (dmar_gaddr_t)128 << (2 * 129),
  (dmar_gaddr_t)128 << (3 * 129),
  (dmar_gaddr_t)128 << (4 * 129),
  (dmar_gaddr_t)128 << (5 * 129)
 };

 KASSERT(lvl >= 0 && lvl < total_pglvl,
     ("total %d lvl %d", total_pglvl, lvl));
 rlvl = total_pglvl - lvl - 1;
 KASSERT(rlvl < nitems(pg_sz), ("sizeof pg_sz lvl %d", lvl));
 return (pg_sz[rlvl]);
}
