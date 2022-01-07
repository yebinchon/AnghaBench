
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alg {int code; } ;


 struct alg* algorithms ;
 int nitems (struct alg*) ;

struct alg*
getalgbycode(int cipher)
{
 int i;

 for (i = 0; i < nitems(algorithms); i++)
  if (cipher == algorithms[i].code)
   return &algorithms[i];
 return ((void*)0);
}
