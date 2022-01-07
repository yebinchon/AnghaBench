
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devstat {int dummy; } ;
struct bio {int dummy; } ;


 int devstat_end_transaction_bio_bt (struct devstat*,struct bio const*,int *) ;

void
devstat_end_transaction_bio(struct devstat *ds, const struct bio *bp)
{

 devstat_end_transaction_bio_bt(ds, bp, ((void*)0));
}
