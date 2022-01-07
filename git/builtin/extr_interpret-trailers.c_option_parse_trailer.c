
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct list_head* value; } ;
struct new_trailer_item {char const* text; int list; int if_missing; int if_exists; int where; } ;
struct list_head {int dummy; } ;


 int if_exists ;
 int if_missing ;
 int list_add_tail (int *,struct list_head*) ;
 int new_trailers_clear (struct list_head*) ;
 int where ;
 struct new_trailer_item* xmalloc (int) ;

__attribute__((used)) static int option_parse_trailer(const struct option *opt,
       const char *arg, int unset)
{
 struct list_head *trailers = opt->value;
 struct new_trailer_item *item;

 if (unset) {
  new_trailers_clear(trailers);
  return 0;
 }

 if (!arg)
  return -1;

 item = xmalloc(sizeof(*item));
 item->text = arg;
 item->where = where;
 item->if_exists = if_exists;
 item->if_missing = if_missing;
 list_add_tail(&item->list, trailers);
 return 0;
}
