
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {struct ref* next; int old_oid; } ;
struct oidset {int dummy; } ;


 int oidset_insert (struct oidset*,int *) ;

__attribute__((used)) static void create_fetch_oidset(struct ref **head, struct oidset *out)
{
 struct ref *rm = *head;
 while (rm) {
  oidset_insert(out, &rm->old_oid);
  rm = rm->next;
 }
}
