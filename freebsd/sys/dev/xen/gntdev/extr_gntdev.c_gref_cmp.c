
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gntdev_gref {int file_index; } ;



__attribute__((used)) static int
gref_cmp(struct gntdev_gref *g1, struct gntdev_gref *g2)
{
 return (g1->file_index - g2->file_index);
}
