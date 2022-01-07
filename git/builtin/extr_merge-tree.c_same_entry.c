
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_entry {scalar_t__ mode; int oid; } ;


 int is_null_oid (int *) ;
 scalar_t__ oideq (int *,int *) ;

__attribute__((used)) static int same_entry(struct name_entry *a, struct name_entry *b)
{
 return !is_null_oid(&a->oid) &&
  !is_null_oid(&b->oid) &&
  oideq(&a->oid, &b->oid) &&
  a->mode == b->mode;
}
