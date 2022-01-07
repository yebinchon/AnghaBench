
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent_args {int eventlist; } ;
struct kevent {int dummy; } ;


 int KASSERT (int,char*) ;
 int KQ_NEVENTS ;
 int copyout (struct kevent*,int,int) ;

__attribute__((used)) static int
kevent_copyout(void *arg, struct kevent *kevp, int count)
{
 struct kevent_args *uap;
 int error;

 KASSERT(count <= KQ_NEVENTS, ("count (%d) > KQ_NEVENTS", count));
 uap = (struct kevent_args *)arg;

 error = copyout(kevp, uap->eventlist, count * sizeof *kevp);
 if (error == 0)
  uap->eventlist += count;
 return (error);
}
