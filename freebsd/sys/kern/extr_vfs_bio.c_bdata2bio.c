
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct buf {int b_npages; int b_data; scalar_t__ b_offset; int * b_pages; } ;
struct bio {int bio_ma_n; int bio_ma_offset; int * bio_ma; int bio_data; scalar_t__ bio_length; int bio_flags; } ;


 int BIO_UNMAPPED ;
 int KASSERT (int,char*) ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int buf_mapped (struct buf*) ;
 int round_page (scalar_t__) ;
 int unmapped_buf ;
 int unmapped_buf_allowed ;

void
bdata2bio(struct buf *bp, struct bio *bip)
{

 if (!buf_mapped(bp)) {
  KASSERT(unmapped_buf_allowed, ("unmapped"));
  bip->bio_ma = bp->b_pages;
  bip->bio_ma_n = bp->b_npages;
  bip->bio_data = unmapped_buf;
  bip->bio_ma_offset = (vm_offset_t)bp->b_offset & PAGE_MASK;
  bip->bio_flags |= BIO_UNMAPPED;
  KASSERT(round_page(bip->bio_ma_offset + bip->bio_length) /
      PAGE_SIZE == bp->b_npages,
      ("Buffer %p too short: %d %lld %d", bp, bip->bio_ma_offset,
      (long long)bip->bio_length, bip->bio_ma_n));
 } else {
  bip->bio_data = bp->b_data;
  bip->bio_ma = ((void*)0);
 }
}
