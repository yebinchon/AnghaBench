
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devstat {int dummy; } ;
struct bio_queue_head {int dummy; } ;
struct bio {int dummy; } ;


 int biofinish (struct bio*,struct devstat*,int) ;
 struct bio* bioq_takefirst (struct bio_queue_head*) ;

void
bioq_flush(struct bio_queue_head *head, struct devstat *stp, int error)
{
 struct bio *bp;

 while ((bp = bioq_takefirst(head)) != ((void*)0))
  biofinish(bp, stp, error);
}
