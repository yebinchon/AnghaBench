
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct man_viewer_info_list {struct man_viewer_info_list* next; int info; } ;


 int FLEX_ALLOC_MEM (struct man_viewer_info_list*,char const*,char const*,size_t) ;
 struct man_viewer_info_list* man_viewer_info_list ;
 int xstrdup (char const*) ;

__attribute__((used)) static void do_add_man_viewer_info(const char *name,
       size_t len,
       const char *value)
{
 struct man_viewer_info_list *new_man_viewer;
 FLEX_ALLOC_MEM(new_man_viewer, name, name, len);
 new_man_viewer->info = xstrdup(value);
 new_man_viewer->next = man_viewer_info_list;
 man_viewer_info_list = new_man_viewer;
}
