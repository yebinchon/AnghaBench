
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct socket {TYPE_1__* so_cred; } ;
struct TYPE_2__ {scalar_t__ cr_uid; } ;


 int EPERM ;

int
socheckuid(struct socket *so, uid_t uid)
{

 if (so == ((void*)0))
  return (EPERM);
 if (so->so_cred->cr_uid != uid)
  return (EPERM);
 return (0);
}
