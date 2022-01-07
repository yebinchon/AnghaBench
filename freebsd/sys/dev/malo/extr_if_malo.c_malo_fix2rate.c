
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nitems (int const*) ;

__attribute__((used)) static int
malo_fix2rate(int fix_rate)
{
 static const int rates[] =
     { 2, 4, 11, 22, 12, 18, 24, 36, 48, 96, 108 };
 return (fix_rate < nitems(rates) ? rates[fix_rate] : 0);
}
