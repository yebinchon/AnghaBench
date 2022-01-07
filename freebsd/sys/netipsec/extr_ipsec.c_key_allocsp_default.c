
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secpolicy {int dummy; } ;


 struct secpolicy* V_def_policy ;
 int key_addref (struct secpolicy*) ;

__attribute__((used)) static struct secpolicy *
key_allocsp_default(void)
{

 key_addref(V_def_policy);
 return (V_def_policy);
}
