
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct nvme_namespace_data {scalar_t__* nguid; scalar_t__* eui64; } ;
struct nvd_disk {int ns; } ;
struct bio {int bio_length; int bio_completed; int * bio_data; int bio_attribute; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;


 int EFAULT ;
 struct nvme_namespace_data* nvme_ns_get_data (int ) ;
 int sprintf (int *,char*,scalar_t__) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int
nvd_getattr(struct bio *bp)
{
 struct nvd_disk *ndisk = (struct nvd_disk *)bp->bio_disk->d_drv1;
 const struct nvme_namespace_data *nsdata;
 u_int i;

 if (!strcmp("GEOM::lunid", bp->bio_attribute)) {
  nsdata = nvme_ns_get_data(ndisk->ns);


  for (i = 0; i < sizeof(nsdata->nguid); i++) {
   if (nsdata->nguid[i] != 0)
    break;
  }
  if (i < sizeof(nsdata->nguid)) {
   if (bp->bio_length < sizeof(nsdata->nguid) * 2 + 1)
    return (EFAULT);
   for (i = 0; i < sizeof(nsdata->nguid); i++) {
    sprintf(&bp->bio_data[i * 2], "%02x",
        nsdata->nguid[i]);
   }
   bp->bio_completed = bp->bio_length;
   return (0);
  }


  for (i = 0; i < sizeof(nsdata->eui64); i++) {
   if (nsdata->eui64[i] != 0)
    break;
  }
  if (i < sizeof(nsdata->eui64)) {
   if (bp->bio_length < sizeof(nsdata->eui64) * 2 + 1)
    return (EFAULT);
   for (i = 0; i < sizeof(nsdata->eui64); i++) {
    sprintf(&bp->bio_data[i * 2], "%02x",
        nsdata->eui64[i]);
   }
   bp->bio_completed = bp->bio_length;
   return (0);
  }
 }
 return (-1);
}
