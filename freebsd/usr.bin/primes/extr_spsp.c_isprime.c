
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef unsigned long long ubig ;


 int spsp (unsigned long long,int) ;

int
isprime(ubig _n)
{
 uint64_t n = _n;
 if (!spsp(n, 2))
  return (0);
 if (n < 2047ULL)
  return (1);


 if (!spsp(n, 3))
  return (0);
 if (n < 1373653ULL)
  return (1);


 if (!spsp(n, 5))
  return (0);
 if (n < 25326001ULL)
  return (1);


 if (!spsp(n, 7))
  return (0);
 if (n < 3215031751ULL)
  return (1);
 if (!spsp(n, 11))
  return (0);
 if (n < 2152302898747ULL)
  return (1);


 if (!spsp(n, 13))
  return (0);
 if (n < 3474749660383ULL)
  return (1);


 if (!spsp(n, 17))
  return (0);
 if (n < 341550071728321ULL)
  return (1);


 if (!spsp(n, 19))
  return (0);
 if (n < 341550071728321ULL)
  return (1);
 if (!spsp(n, 23))
  return (0);
 if (n < 3825123056546413051)
  return (1);
 if (!spsp(n, 29))
  return (0);
 if (!spsp(n, 31))
  return (0);
 if (!spsp(n, 37))
  return (0);


 return (1);
}
