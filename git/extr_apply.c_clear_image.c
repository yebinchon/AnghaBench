
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image {int line_allocated; int buf; } ;


 int free (int ) ;
 int memset (struct image*,int ,int) ;

__attribute__((used)) static void clear_image(struct image *image)
{
 free(image->buf);
 free(image->line_allocated);
 memset(image, 0, sizeof(*image));
}
