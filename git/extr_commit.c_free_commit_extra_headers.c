
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_extra_header {struct commit_extra_header* value; struct commit_extra_header* key; struct commit_extra_header* next; } ;


 int free (struct commit_extra_header*) ;

void free_commit_extra_headers(struct commit_extra_header *extra)
{
 while (extra) {
  struct commit_extra_header *next = extra->next;
  free(extra->key);
  free(extra->value);
  free(extra);
  extra = next;
 }
}
