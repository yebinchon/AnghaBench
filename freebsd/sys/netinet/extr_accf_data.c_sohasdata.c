
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int SU_ISCONNECTED ;
 int SU_OK ;
 int soreadable (struct socket*) ;

__attribute__((used)) static int
sohasdata(struct socket *so, void *arg, int waitflag)
{

 if (!soreadable(so))
  return (SU_OK);

 return (SU_ISCONNECTED);
}
