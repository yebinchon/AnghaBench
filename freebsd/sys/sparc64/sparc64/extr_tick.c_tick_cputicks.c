
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int rd (int ) ;
 int tick ;

__attribute__((used)) static uint64_t
tick_cputicks(void)
{

 return (rd(tick));
}
