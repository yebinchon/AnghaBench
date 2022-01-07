
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {scalar_t__ bio_error; scalar_t__ bio_inbed; scalar_t__ bio_children; scalar_t__ bio_length; scalar_t__ bio_completed; TYPE_1__* bio_to; int bio_offset; struct bio* bio_parent; } ;
struct TYPE_2__ {int name; } ;


 int G_LLVM_DEBUG (int ,char*,scalar_t__,int ,scalar_t__,int ) ;
 int g_destroy_bio (struct bio*) ;
 int g_io_deliver (struct bio*,scalar_t__) ;

__attribute__((used)) static void
g_llvm_done(struct bio *b)
{
 struct bio *parent_b;

 parent_b = b->bio_parent;

 if (b->bio_error != 0) {
  G_LLVM_DEBUG(0, "Error %d for offset=%ju, length=%ju on %s",
      b->bio_error, b->bio_offset, b->bio_length,
      b->bio_to->name);
  if (parent_b->bio_error == 0)
   parent_b->bio_error = b->bio_error;
 }

 parent_b->bio_inbed++;
 parent_b->bio_completed += b->bio_completed;

 if (parent_b->bio_children == parent_b->bio_inbed) {
  parent_b->bio_completed = parent_b->bio_length;
  g_io_deliver(parent_b, parent_b->bio_error);
 }
 g_destroy_bio(b);
}
