
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long uint64_t ;


 int geode_counter ;
 unsigned int inl (int ) ;

__attribute__((used)) static uint64_t
geode_cputicks(void)
{
 unsigned c;
 static unsigned last;
 static uint64_t offset;

 c = inl(geode_counter);
 if (c < last)
  offset += (1LL << 32);
 last = c;
 return (offset | c);
}
