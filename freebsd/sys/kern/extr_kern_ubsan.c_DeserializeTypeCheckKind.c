
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int ASSERT (int) ;
 size_t __arraycount (char const**) ;

__attribute__((used)) static const char *
DeserializeTypeCheckKind(uint8_t hhuTypeCheckKind)
{
 const char *rgczTypeCheckKinds[] = {
  "load of",
  "store to",
  "reference binding to",
  "member access within",
  "member call on",
  "constructor call on",
  "downcast of",
  "downcast of",
  "upcast of",
  "cast to virtual base of",
  "_Nonnull binding to",
  "dynamic operation on"
 };

 ASSERT(__arraycount(rgczTypeCheckKinds) > hhuTypeCheckKind);

 return rgczTypeCheckKinds[hhuTypeCheckKind];
}
