
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct thread {scalar_t__* td_retval; } ;
struct pollfd {scalar_t__ revents; } ;


 int copyout (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static int
pollout(struct thread *td, struct pollfd *fds, struct pollfd *ufds, u_int nfd)
{
 int error = 0;
 u_int i = 0;
 u_int n = 0;

 for (i = 0; i < nfd; i++) {
  error = copyout(&fds->revents, &ufds->revents,
      sizeof(ufds->revents));
  if (error)
   return (error);
  if (fds->revents != 0)
   n++;
  fds++;
  ufds++;
 }
 td->td_retval[0] = n;
 return (0);
}
