
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int lba_t ;


 int VMDK_IMAGE_ROUND ;
 scalar_t__ VMDK_MIN_GRAIN_SIZE ;
 scalar_t__ VMDK_SECTOR_SIZE ;
 scalar_t__ blksz ;
 int fprintf (int ,char*,int ,int ) ;
 scalar_t__ grainsz ;
 int image_set_size (int) ;
 int secsz ;
 int stderr ;
 scalar_t__ verbose ;

__attribute__((used)) static int
vmdk_resize(lba_t imgsz)
{
 uint64_t imagesz;

 imagesz = imgsz * secsz;
 imagesz = (imagesz + VMDK_IMAGE_ROUND - 1) & ~(VMDK_IMAGE_ROUND - 1);
 grainsz = (blksz < VMDK_MIN_GRAIN_SIZE) ? VMDK_MIN_GRAIN_SIZE : blksz;

 if (verbose)
  fprintf(stderr, "VMDK: image size = %ju, grain size = %ju\n",
      (uintmax_t)imagesz, (uintmax_t)grainsz);

 grainsz /= VMDK_SECTOR_SIZE;
 return (image_set_size(imagesz / secsz));
}
