
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int name; } ;


 int check_ref (int ,int) ;

int check_ref_type(const struct ref *ref, int flags)
{
 return check_ref(ref->name, flags);
}
