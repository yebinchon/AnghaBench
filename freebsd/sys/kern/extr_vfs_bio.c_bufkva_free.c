
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct buf {int b_kvasize; scalar_t__ b_kvabase; scalar_t__ b_data; } ;


 int BUF_CHECK_MAPPED (struct buf*) ;
 int BUF_CHECK_UNMAPPED (struct buf*) ;
 int KASSERT (int,char*) ;
 scalar_t__ buf_mapped (struct buf*) ;
 int buffer_arena ;
 int buffreekvacnt ;
 int bufkvaspace ;
 int counter_u64_add (int ,int) ;
 scalar_t__ unmapped_buf ;
 int vmem_free (int ,int ,int) ;

__attribute__((used)) static void
bufkva_free(struct buf *bp)
{
 if (bp->b_kvasize == 0)
  return;

 vmem_free(buffer_arena, (vm_offset_t)bp->b_kvabase, bp->b_kvasize);
 counter_u64_add(bufkvaspace, -bp->b_kvasize);
 counter_u64_add(buffreekvacnt, 1);
 bp->b_data = bp->b_kvabase = unmapped_buf;
 bp->b_kvasize = 0;
}
