
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_extra_header {int key; struct commit_extra_header* next; } ;
struct commit {int dummy; } ;
typedef int (* each_mergetag_fn ) (struct commit*,struct commit_extra_header*,void*) ;


 int free_commit_extra_headers (struct commit_extra_header*) ;
 struct commit_extra_header* read_commit_extra_headers (struct commit*,int *) ;
 scalar_t__ strcmp (int ,char*) ;

int for_each_mergetag(each_mergetag_fn fn, struct commit *commit, void *data)
{
 struct commit_extra_header *extra, *to_free;
 int res = 0;

 to_free = read_commit_extra_headers(commit, ((void*)0));
 for (extra = to_free; !res && extra; extra = extra->next) {
  if (strcmp(extra->key, "mergetag"))
   continue;
  res = fn(commit, extra, data);
 }
 free_commit_extra_headers(to_free);
 return res;
}
