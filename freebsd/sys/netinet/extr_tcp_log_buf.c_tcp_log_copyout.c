
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int * sopt_td; } ;


 int bcopy (void*,void*,size_t) ;
 int copyout (void*,void*,size_t) ;

__attribute__((used)) static inline int
tcp_log_copyout(struct sockopt *sopt, void *src, void *dst, size_t len)
{

 if (sopt->sopt_td != ((void*)0))
  return (copyout(src, dst, len));
 bcopy(src, dst, len);
 return (0);
}
