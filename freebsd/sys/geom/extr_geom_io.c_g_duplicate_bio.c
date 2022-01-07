
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int dummy; } ;
struct bio {int bio_flags; int bio_children; int bio_attribute; int bio_ma_offset; int bio_ma_n; int bio_ma; int bio_data; int bio_offset; int bio_length; int bio_cmd; struct bio* bio_parent; } ;


 int BIO_UNMAPPED ;
 int BIO_VLIST ;
 int CTR2 (int,char*,struct bio*,struct bio*) ;
 int CTRSTACK (int,struct stack*,int) ;
 int KTR_COMPILE ;
 int KTR_GEOM ;
 int M_WAITOK ;
 int M_ZERO ;
 int biozone ;
 int ktr_mask ;
 int stack_save (struct stack*) ;
 struct bio* uma_zalloc (int ,int) ;

struct bio *
g_duplicate_bio(struct bio *bp)
{
 struct bio *bp2;

 bp2 = uma_zalloc(biozone, M_WAITOK | M_ZERO);
 bp2->bio_flags = bp->bio_flags & (BIO_UNMAPPED | BIO_VLIST);
 bp2->bio_parent = bp;
 bp2->bio_cmd = bp->bio_cmd;
 bp2->bio_length = bp->bio_length;
 bp2->bio_offset = bp->bio_offset;
 bp2->bio_data = bp->bio_data;
 bp2->bio_ma = bp->bio_ma;
 bp2->bio_ma_n = bp->bio_ma_n;
 bp2->bio_ma_offset = bp->bio_ma_offset;
 bp2->bio_attribute = bp->bio_attribute;
 bp->bio_children++;
 return(bp2);
}
