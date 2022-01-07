
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int indent; scalar_t__ padding; } ;
struct column_data {int* len; int cols; TYPE_2__* list; int rows; TYPE_1__ opts; } ;
struct TYPE_4__ {int nr; } ;


 int DIV_ROUND_UP (int,int) ;
 int strlen (int ) ;

__attribute__((used)) static void layout(struct column_data *data, int *width)
{
 int i;

 *width = 0;
 for (i = 0; i < data->list->nr; i++)
  if (*width < data->len[i])
   *width = data->len[i];

 *width += data->opts.padding;

 data->cols = (data->opts.width - strlen(data->opts.indent)) / *width;
 if (data->cols == 0)
  data->cols = 1;

 data->rows = DIV_ROUND_UP(data->list->nr, data->cols);
}
