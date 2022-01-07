
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {struct entry* en_name; } ;


 int free (struct entry*) ;

__attribute__((used)) static void
entry_destroy(struct entry *entry)
{

 free(entry->en_name);
 free(entry);
}
