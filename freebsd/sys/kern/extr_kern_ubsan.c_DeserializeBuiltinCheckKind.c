
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int ASSERT (int) ;
 size_t __arraycount (char const**) ;

__attribute__((used)) static const char *
DeserializeBuiltinCheckKind(uint8_t hhuBuiltinCheckKind)
{
 const char *rgczBuiltinCheckKinds[] = {
  "ctz()",
  "clz()"
 };

 ASSERT(__arraycount(rgczBuiltinCheckKinds) > hhuBuiltinCheckKind);

 return rgczBuiltinCheckKinds[hhuBuiltinCheckKind];
}
