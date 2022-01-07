
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct image {int nr; TYPE_1__* line; int len; int buf; } ;
struct TYPE_2__ {scalar_t__ len; } ;



__attribute__((used)) static void remove_first_line(struct image *img)
{
 img->buf += img->line[0].len;
 img->len -= img->line[0].len;
 img->line++;
 img->nr--;
}
