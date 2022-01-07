
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit_extra_header {int dummy; } ;
struct commit {int dummy; } ;


 int handle_signed_tag (struct commit*,struct commit_extra_header***) ;

void append_merge_tag_headers(struct commit_list *parents,
         struct commit_extra_header ***tail)
{
 while (parents) {
  struct commit *parent = parents->item;
  handle_signed_tag(parent, tail);
  parents = parents->next;
 }
}
