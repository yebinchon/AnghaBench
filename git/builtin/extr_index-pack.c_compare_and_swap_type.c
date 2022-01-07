
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum object_type { ____Placeholder_object_type } object_type ;


 int type_cas_lock () ;
 int type_cas_unlock () ;

__attribute__((used)) static int compare_and_swap_type(signed char *type,
     enum object_type want,
     enum object_type set)
{
 enum object_type old;

 type_cas_lock();
 old = *type;
 if (old == want)
  *type = set;
 type_cas_unlock();

 return old == want;
}
