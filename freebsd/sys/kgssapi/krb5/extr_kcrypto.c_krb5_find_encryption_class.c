
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_encryption_class {int ec_type; } ;


 struct krb5_encryption_class** krb5_encryption_classes ;

struct krb5_encryption_class *
krb5_find_encryption_class(int etype)
{
 int i;

 for (i = 0; krb5_encryption_classes[i]; i++) {
  if (krb5_encryption_classes[i]->ec_type == etype)
   return (krb5_encryption_classes[i]);
 }
 return (((void*)0));
}
