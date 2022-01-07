
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACL_TYPE_ACCESS ;

 int ACL_TYPE_DEFAULT ;


__attribute__((used)) static int
acl_type_unold(int type)
{
 switch (type) {
 case 129:
  return (ACL_TYPE_ACCESS);

 case 128:
  return (ACL_TYPE_DEFAULT);

 default:
  return (type);
 }
}
