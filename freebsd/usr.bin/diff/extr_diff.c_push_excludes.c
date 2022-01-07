
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct excludes {char* pattern; struct excludes* next; } ;


 struct excludes* excludes_list ;
 struct excludes* xmalloc (int) ;

void
push_excludes(char *pattern)
{
 struct excludes *entry;

 entry = xmalloc(sizeof(*entry));
 entry->pattern = pattern;
 entry->next = excludes_list;
 excludes_list = entry;
}
