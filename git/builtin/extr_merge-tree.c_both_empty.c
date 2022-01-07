
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_entry {int oid; } ;


 scalar_t__ is_null_oid (int *) ;

__attribute__((used)) static int both_empty(struct name_entry *a, struct name_entry *b)
{
 return is_null_oid(&a->oid) && is_null_oid(&b->oid);
}
