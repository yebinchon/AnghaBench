
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct man_viewer_list {struct man_viewer_list* next; } ;


 int FLEX_ALLOC_STR (struct man_viewer_list*,char const*,char const*) ;
 struct man_viewer_list* man_viewer_list ;

__attribute__((used)) static void add_man_viewer(const char *name)
{
 struct man_viewer_list **p = &man_viewer_list;

 while (*p)
  p = &((*p)->next);
 FLEX_ALLOC_STR(*p, name, name);
}
