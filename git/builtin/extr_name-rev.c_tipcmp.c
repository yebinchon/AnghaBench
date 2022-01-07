
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tip_table_entry {int oid; } ;


 int oidcmp (int *,int *) ;

__attribute__((used)) static int tipcmp(const void *a_, const void *b_)
{
 const struct tip_table_entry *a = a_, *b = b_;
 return oidcmp(&a->oid, &b->oid);
}
