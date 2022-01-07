
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_delta_entry {int oid; } ;


 int oidcmp (int *,int *) ;

__attribute__((used)) static int compare_ref_delta_entry(const void *a, const void *b)
{
 const struct ref_delta_entry *delta_a = a;
 const struct ref_delta_entry *delta_b = b;

 return oidcmp(&delta_a->oid, &delta_b->oid);
}
