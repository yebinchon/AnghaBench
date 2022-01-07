
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_queue_head {int dummy; } ;
struct bio {int dummy; } ;


 struct bio* bioq_first (struct bio_queue_head*) ;
 int bioq_remove (struct bio_queue_head*,struct bio*) ;
 int g_destroy_bio (struct bio*) ;

__attribute__((used)) static void
bioq_dismantle(struct bio_queue_head *bq)
{
 struct bio *b;

 for (b = bioq_first(bq); b != ((void*)0); b = bioq_first(bq)) {
  bioq_remove(bq, b);
  g_destroy_bio(b);
 }
}
