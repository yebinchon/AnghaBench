
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct image {size_t nr; TYPE_1__* line; int len; } ;
struct TYPE_2__ {scalar_t__ len; } ;



__attribute__((used)) static void remove_last_line(struct image *img)
{
 img->len -= img->line[--img->nr].len;
}
