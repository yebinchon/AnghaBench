
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksched {int dummy; } ;


 int M_P31B ;
 int free (struct ksched*,int ) ;

int
ksched_detach(struct ksched *ks)
{

 free(ks, M_P31B);
 return (0);
}
