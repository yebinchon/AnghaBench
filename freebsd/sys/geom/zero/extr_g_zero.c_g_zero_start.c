
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bio_cmd; int bio_flags; int bio_length; int bio_completed; int bio_data; } ;





 int BIO_UNMAPPED ;

 int ENXIO ;
 int EOPNOTSUPP ;
 int g_io_deliver (struct bio*,int) ;
 int g_zero_byte ;
 int g_zero_clear ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void
g_zero_start(struct bio *bp)
{
 int error = ENXIO;

 switch (bp->bio_cmd) {
 case 129:
  if (g_zero_clear && (bp->bio_flags & BIO_UNMAPPED) == 0)
   memset(bp->bio_data, g_zero_byte, bp->bio_length);

 case 131:
 case 128:
  bp->bio_completed = bp->bio_length;
  error = 0;
  break;
 case 130:
 default:
  error = EOPNOTSUPP;
  break;
 }
 g_io_deliver(bp, error);
}
