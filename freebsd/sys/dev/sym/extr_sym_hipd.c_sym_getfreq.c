
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int hcb_p ;


 scalar_t__ getfreq (int ,int) ;

__attribute__((used)) static unsigned sym_getfreq (hcb_p np)
{
 u_int f1, f2;
 int gen = 11;

 (void) getfreq (np, gen);
 f1 = getfreq (np, gen);
 f2 = getfreq (np, gen);
 if (f1 > f2) f1 = f2;
 return f1;
}
