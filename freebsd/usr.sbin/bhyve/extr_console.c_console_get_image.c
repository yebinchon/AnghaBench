
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhyvegc_image {int dummy; } ;
struct TYPE_2__ {int gc; } ;


 struct bhyvegc_image* bhyvegc_get_image (int ) ;
 TYPE_1__ console ;

struct bhyvegc_image *
console_get_image(void)
{
 struct bhyvegc_image *bhyvegc_image;

 bhyvegc_image = bhyvegc_get_image(console.gc);

 return (bhyvegc_image);
}
