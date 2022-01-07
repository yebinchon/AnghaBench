
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {int dummy; } ;


 int geode_counter ;
 int inl (int ) ;

__attribute__((used)) static unsigned
geode_get_timecount(struct timecounter *tc)
{
 return (inl(geode_counter));
}
