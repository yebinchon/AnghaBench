
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {int dummy; } ;


 unsigned int inl (int ) ;
 int piix_timecounter_address ;

__attribute__((used)) static unsigned
piix_get_timecount(struct timecounter *tc)
{
 unsigned u1, u2, u3;

 u2 = inl(piix_timecounter_address);
 u3 = inl(piix_timecounter_address);
 do {
  u1 = u2;
  u2 = u3;
  u3 = inl(piix_timecounter_address);
 } while (u1 > u2 || u2 > u3);
 return (u2);
}
