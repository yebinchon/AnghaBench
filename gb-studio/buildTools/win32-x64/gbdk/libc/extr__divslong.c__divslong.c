
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long _divulong (long,long) ;

long
_divslong (long a, long b)
{
  long r;

  r = _divulong((a < 0 ? -a : a),
                (b < 0 ? -b : b));
  if ( (a < 0) ^ (b < 0))
    return -r;
  else
    return r;
}
