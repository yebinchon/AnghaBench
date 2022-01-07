
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int EDEADLK ;
 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 int ESRCH ;

int
mac_error_select(int error1, int error2)
{


 if (error1 == EDEADLK || error2 == EDEADLK)
  return (EDEADLK);


 if (error1 == EINVAL || error2 == EINVAL)
  return (EINVAL);


 if (error1 == ESRCH || error2 == ESRCH)
  return (ESRCH);

 if (error1 == ENOENT || error2 == ENOENT)
  return (ENOENT);


 if (error1 == EACCES || error2 == EACCES)
  return (EACCES);


 if (error1 == EPERM || error2 == EPERM)
  return (EPERM);


 if (error1 != 0)
  return (error1);
 return (error2);
}
