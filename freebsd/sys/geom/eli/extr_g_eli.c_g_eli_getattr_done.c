
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {scalar_t__ bio_error; int bio_length; int bio_data; int bio_attribute; } ;


 int g_std_done (struct bio*) ;
 int strcmp (int ,char*) ;
 int strlcat (int ,char*,int ) ;

__attribute__((used)) static void
g_eli_getattr_done(struct bio *bp)
{
 if (bp->bio_error == 0 &&
     !strcmp(bp->bio_attribute, "GEOM::physpath")) {
  strlcat(bp->bio_data, "/eli", bp->bio_length);
 }
 g_std_done(bp);
}
