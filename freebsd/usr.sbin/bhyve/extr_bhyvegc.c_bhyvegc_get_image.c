
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhyvegc_image {int dummy; } ;
struct bhyvegc {struct bhyvegc_image* gc_image; } ;



struct bhyvegc_image *
bhyvegc_get_image(struct bhyvegc *gc)
{
 if (gc == ((void*)0))
  return (((void*)0));

 return (gc->gc_image);
}
