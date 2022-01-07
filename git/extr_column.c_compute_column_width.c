
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct column_data {int cols; size_t* width; int rows; scalar_t__* len; TYPE_1__* list; } ;
struct TYPE_2__ {int nr; } ;


 void* XY2LINEAR (struct column_data*,int,int) ;

__attribute__((used)) static void compute_column_width(struct column_data *data)
{
 int i, x, y;
 for (x = 0; x < data->cols; x++) {
  data->width[x] = XY2LINEAR(data, x, 0);
  for (y = 0; y < data->rows; y++) {
   i = XY2LINEAR(data, x, y);
   if (i < data->list->nr &&
       data->len[data->width[x]] < data->len[i])
    data->width[x] = i;
  }
 }
}
