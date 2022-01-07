
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int lba_t ;


 int image_set_size (int) ;
 int secsz ;
 int vhd_resize (int) ;

__attribute__((used)) static int
vhd_dyn_resize(lba_t imgsz)
{
 uint64_t imagesz;

 imagesz = vhd_resize(imgsz * secsz);
 return (image_set_size(imagesz / secsz));
}
