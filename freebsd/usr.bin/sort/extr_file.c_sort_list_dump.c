
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sort_list_item {int str; } ;
struct sort_list {size_t count; struct sort_list_item** list; } ;
struct TYPE_2__ {int zflag; int uflag; } ;
typedef int FILE ;


 int bwsfwrite (int ,int *,int ) ;
 int closefile (int *,char const*) ;
 int err (int,int *) ;
 scalar_t__ list_coll (struct sort_list_item**,struct sort_list_item**) ;
 int * openfile (char const*,char*) ;
 TYPE_1__ sort_opts_vals ;

void
sort_list_dump(struct sort_list *l, const char *fn)
{

 if (l && fn) {
  FILE *f;

  f = openfile(fn, "w");
  if (f == ((void*)0))
   err(2, ((void*)0));

  if (l->list) {
   size_t i;
   if (!(sort_opts_vals.uflag)) {
    for (i = 0; i < l->count; ++i)
     bwsfwrite(l->list[i]->str, f,
         sort_opts_vals.zflag);
   } else {
    struct sort_list_item *last_printed_item = ((void*)0);
    struct sort_list_item *item;
    for (i = 0; i < l->count; ++i) {
     item = l->list[i];
     if ((last_printed_item == ((void*)0)) ||
         list_coll(&last_printed_item, &item)) {
      bwsfwrite(item->str, f, sort_opts_vals.zflag);
      last_printed_item = item;
     }
    }
   }
  }

  closefile(f, fn);
 }
}
