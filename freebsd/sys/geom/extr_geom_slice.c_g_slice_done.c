
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bio {scalar_t__ bio_cmd; scalar_t__ bio_error; char* bio_data; int bio_length; TYPE_2__* bio_parent; int bio_attribute; } ;
typedef int idx ;
struct TYPE_4__ {TYPE_1__* bio_to; } ;
struct TYPE_3__ {int index; } ;


 scalar_t__ BIO_GETATTR ;
 scalar_t__ EFAULT ;
 int KASSERT (int,char*) ;
 int g_std_done (struct bio*) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlcat (char*,char*,int ) ;

__attribute__((used)) static void
g_slice_done(struct bio *bp)
{

 KASSERT(bp->bio_cmd == BIO_GETATTR &&
     strcmp(bp->bio_attribute, "GEOM::ident") == 0,
     ("bio_cmd=0x%x bio_attribute=%s", bp->bio_cmd, bp->bio_attribute));

 if (bp->bio_error == 0 && bp->bio_data[0] != '\0') {
  char idx[8];


  snprintf(idx, sizeof(idx), "s%d",
      bp->bio_parent->bio_to->index);
  if (strlcat(bp->bio_data, idx, bp->bio_length) >=
      bp->bio_length) {
   bp->bio_error = EFAULT;
  }
 }
 g_std_done(bp);
}
