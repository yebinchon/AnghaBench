
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double NAN ;
 scalar_t__ isnan (double) ;

__attribute__((used)) static bool
is_nan(double d)
{

 return ((d == NAN) || (isnan(d)));
}
