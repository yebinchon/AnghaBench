
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sglist {int dummy; } ;
struct bio {int bio_flags; int bio_bcount; int bio_ma_offset; int bio_ma; int bio_data; } ;


 int BIO_UNMAPPED ;
 int sglist_append (struct sglist*,int ,int ) ;
 int sglist_append_vmpages (struct sglist*,int ,int ,int ) ;

int
sglist_append_bio(struct sglist *sg, struct bio *bp)
{
 int error;

 if ((bp->bio_flags & BIO_UNMAPPED) == 0)
  error = sglist_append(sg, bp->bio_data, bp->bio_bcount);
 else
  error = sglist_append_vmpages(sg, bp->bio_ma,
      bp->bio_ma_offset, bp->bio_bcount);
 return (error);
}
