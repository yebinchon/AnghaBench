
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_entry {struct path_entry* next; } ;


 struct path_entry* first ;
 struct path_entry* last ;
 struct path_entry* new_path_entry (char const*) ;

void
addtoincludepath(const char *dirname)
{
 struct path_entry *n;

 n = new_path_entry(dirname);

 if (last) {
  last->next = n;
  last = n;
 }
 else
  last = first = n;
}
