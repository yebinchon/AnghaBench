
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration_entry {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
configuration_entry_sort_cmp(const void *e1, const void *e2)
{
 return (strcmp((*((struct configuration_entry **)e1))->name,
  (*((struct configuration_entry **)e2))->name
  ));
}
