
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {scalar_t__ bio_error; int bio_children; int bio_inbed; int bio_completed; struct bio* bio_parent; } ;


 int g_destroy_bio (struct bio*) ;
 int g_gate_queue_io (struct bio*) ;
 int g_io_deliver (struct bio*,int ) ;

__attribute__((used)) static void
g_gate_done(struct bio *cbp)
{
 struct bio *pbp;

 pbp = cbp->bio_parent;
 if (cbp->bio_error == 0) {
  pbp->bio_completed = cbp->bio_completed;
  g_destroy_bio(cbp);
  pbp->bio_inbed++;
  g_io_deliver(pbp, 0);
 } else {

  g_destroy_bio(cbp);
  pbp->bio_children--;
  g_gate_queue_io(pbp);
 }
}
