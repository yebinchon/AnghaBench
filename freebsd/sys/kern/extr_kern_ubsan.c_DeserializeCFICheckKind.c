
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int ASSERT (int) ;
 size_t __arraycount (char const**) ;

__attribute__((used)) static const char *
DeserializeCFICheckKind(uint8_t hhuCFICheckKind)
{
 const char *rgczCFICheckKinds[] = {
  "virtual call",
  "non-virtual call",
  "base-to-derived cast",
  "cast to unrelated type",
  "indirect function call",
  "non-virtual pointer to member function call",
  "virtual pointer to member function call",
 };

 ASSERT(__arraycount(rgczCFICheckKinds) > hhuCFICheckKind);

 return rgczCFICheckKinds[hhuCFICheckKind];
}
