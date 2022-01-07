
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int b_pgbefore; int b_npages; int b_pgafter; int * b_vp; int ** b_pages; int b_caller1; int (* b_pgiodone ) (int ,int **,int,int) ;} ;


 int pbrelbo (struct buf*) ;
 int stub1 (int ,int **,int,int) ;
 int uma_zfree (int ,struct buf*) ;
 int vnode_pager_generic_getpages_done (struct buf*) ;
 int vnode_pbuf_zone ;

__attribute__((used)) static void
vnode_pager_generic_getpages_done_async(struct buf *bp)
{
 int error;

 error = vnode_pager_generic_getpages_done(bp);

 bp->b_pgiodone(bp->b_caller1, bp->b_pages + bp->b_pgbefore,
     bp->b_npages - bp->b_pgbefore - bp->b_pgafter, error);
 for (int i = 0; i < bp->b_npages; i++)
  bp->b_pages[i] = ((void*)0);
 bp->b_vp = ((void*)0);
 pbrelbo(bp);
 uma_zfree(vnode_pbuf_zone, bp);
}
