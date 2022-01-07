
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {scalar_t__ bio_cmd; scalar_t__ bio_error; int bio_inbed; struct bio* bio_caller1; int bio_from; struct bio* bio_parent; } ;


 scalar_t__ BIO_READ ;
 int g_destroy_bio (struct bio*) ;
 int g_io_request (struct bio*,int ) ;
 int g_std_done (struct bio*) ;

__attribute__((used)) static void
ccdiodone(struct bio *cbp)
{
 struct bio *mbp, *pbp;

 mbp = cbp->bio_caller1;
 pbp = cbp->bio_parent;

 if (pbp->bio_cmd == BIO_READ) {
  if (cbp->bio_error == 0) {

   if (mbp != ((void*)0)) {
    pbp->bio_inbed++;
    g_destroy_bio(mbp);
   }
   g_std_done(cbp);
   return;
  }
  if (mbp != ((void*)0)) {

   mbp->bio_caller1 = ((void*)0);
   pbp->bio_inbed++;
   g_destroy_bio(cbp);
   g_io_request(mbp, mbp->bio_from);




   return;
  }
  g_std_done(cbp);
  return;
 }
 if (mbp != ((void*)0)) {
  mbp->bio_caller1 = ((void*)0);
  pbp->bio_inbed++;
  if (cbp->bio_error != 0 && pbp->bio_error == 0)
   pbp->bio_error = cbp->bio_error;
  g_destroy_bio(cbp);
  return;
 }
 g_std_done(cbp);
}
