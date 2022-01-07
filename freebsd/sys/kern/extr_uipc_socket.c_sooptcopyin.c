
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {size_t sopt_valsize; int sopt_val; int * sopt_td; } ;


 int EINVAL ;
 int bcopy (int ,void*,size_t) ;
 int copyin (int ,void*,size_t) ;

int
sooptcopyin(struct sockopt *sopt, void *buf, size_t len, size_t minlen)
{
 size_t valsize;







 if ((valsize = sopt->sopt_valsize) < minlen)
  return EINVAL;
 if (valsize > len)
  sopt->sopt_valsize = valsize = len;

 if (sopt->sopt_td != ((void*)0))
  return (copyin(sopt->sopt_val, buf, valsize));

 bcopy(sopt->sopt_val, buf, valsize);
 return (0);
}
