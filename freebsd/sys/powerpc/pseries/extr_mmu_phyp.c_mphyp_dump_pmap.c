
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_long ;
struct lpte {int pte_lo; int pte_hi; } ;
struct dump_context {int ptex; int blksz; int ptex_end; } ;
typedef int mmu_t ;


 int H_READ ;
 int MIN (int,int ) ;
 int phyp_pft_hcall (int ,int ,int,int ,int ,int *,int *,int *) ;

__attribute__((used)) static void *
mphyp_dump_pmap(mmu_t mmu, void *ctx, void *buf, u_long *nbytes)
{
 struct dump_context *dctx;
 struct lpte p, *pbuf;
 int bufidx;
 uint64_t junk;
 u_long ptex, ptex_end;

 dctx = (struct dump_context *)ctx;
 pbuf = (struct lpte *)buf;
 bufidx = 0;
 ptex = dctx->ptex;
 ptex_end = ptex + dctx->blksz / sizeof(struct lpte);
 ptex_end = MIN(ptex_end, dctx->ptex_end);
 *nbytes = (ptex_end - ptex) * sizeof(struct lpte);

 if (*nbytes == 0)
  return (((void*)0));

 for (; ptex < ptex_end; ptex++) {
  phyp_pft_hcall(H_READ, 0, ptex, 0, 0,
   &p.pte_hi, &p.pte_lo, &junk);
  pbuf[bufidx++] = p;
 }

 dctx->ptex = ptex;
 return (buf);
}
