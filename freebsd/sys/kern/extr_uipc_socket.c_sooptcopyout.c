
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {size_t sopt_valsize; int * sopt_val; int * sopt_td; } ;


 int bcopy (void const*,int *,size_t) ;
 int copyout (void const*,int *,size_t) ;
 size_t min (size_t,size_t) ;

int
sooptcopyout(struct sockopt *sopt, const void *buf, size_t len)
{
 int error;
 size_t valsize;

 error = 0;
 valsize = min(len, sopt->sopt_valsize);
 sopt->sopt_valsize = valsize;
 if (sopt->sopt_val != ((void*)0)) {
  if (sopt->sopt_td != ((void*)0))
   error = copyout(buf, sopt->sopt_val, valsize);
  else
   bcopy(buf, sopt->sopt_val, valsize);
 }
 return (error);
}
