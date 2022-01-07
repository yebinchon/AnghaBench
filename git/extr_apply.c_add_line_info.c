
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct image {int nr; TYPE_1__* line_allocated; int alloc; } ;
struct TYPE_2__ {size_t len; unsigned int flag; int hash; } ;


 int ALLOC_GROW (TYPE_1__*,int,int ) ;
 int hash_line (char const*,size_t) ;

__attribute__((used)) static void add_line_info(struct image *img, const char *bol, size_t len, unsigned flag)
{
 ALLOC_GROW(img->line_allocated, img->nr + 1, img->alloc);
 img->line_allocated[img->nr].len = len;
 img->line_allocated[img->nr].hash = hash_line(bol, len);
 img->line_allocated[img->nr].flag = flag;
 img->nr++;
}
