
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* indent; char const* nl; scalar_t__ padding; } ;
struct column_data {int* len; size_t* width; int rows; int cols; TYPE_3__* list; TYPE_1__ opts; int colopts; } ;
struct TYPE_6__ {int nr; TYPE_2__* items; } ;
struct TYPE_5__ {char* string; } ;


 scalar_t__ COL_COLUMN ;
 scalar_t__ COL_LAYOUT (int ) ;
 int XY2LINEAR (struct column_data*,int,int) ;
 int printf (char*,char*,char*,char const*) ;

__attribute__((used)) static int display_cell(struct column_data *data, int initial_width,
   const char *empty_cell, int x, int y)
{
 int i, len, newline;

 i = XY2LINEAR(data, x, y);
 if (i >= data->list->nr)
  return -1;

 len = data->len[i];
 if (data->width && data->len[data->width[x]] < initial_width) {





  len += initial_width - data->len[data->width[x]];
  len -= data->opts.padding;
 }

 if (COL_LAYOUT(data->colopts) == COL_COLUMN)
  newline = i + data->rows >= data->list->nr;
 else
  newline = x == data->cols - 1 || i == data->list->nr - 1;

 printf("%s%s%s",
        x == 0 ? data->opts.indent : "",
        data->list->items[i].string,
        newline ? data->opts.nl : empty_cell + len);
 return 0;
}
