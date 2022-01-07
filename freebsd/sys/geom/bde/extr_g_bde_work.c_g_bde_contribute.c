
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bio_error; scalar_t__ bio_completed; scalar_t__ bio_length; } ;
typedef scalar_t__ off_t ;
typedef int intmax_t ;


 int G_T_TOPOLOGY ;
 int KASSERT (int,char*) ;
 int g_io_deliver (struct bio*,int) ;
 int g_trace (int ,char*,struct bio*,int ,int) ;

__attribute__((used)) static void
g_bde_contribute(struct bio *bp, off_t bytes, int error)
{

 g_trace(G_T_TOPOLOGY, "g_bde_contribute bp %p bytes %jd error %d",
      bp, (intmax_t)bytes, error);
 if (bp->bio_error == 0)
  bp->bio_error = error;
 bp->bio_completed += bytes;
 KASSERT(bp->bio_completed <= bp->bio_length, ("Too large contribution"));
 if (bp->bio_completed == bp->bio_length) {
  if (bp->bio_error != 0)
   bp->bio_completed = 0;
  g_io_deliver(bp, bp->bio_error);
 }
}
