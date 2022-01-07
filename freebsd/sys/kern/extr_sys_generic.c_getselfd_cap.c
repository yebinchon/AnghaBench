
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedesc {int dummy; } ;
struct file {int dummy; } ;


 int cap_event_rights ;
 int fget_unlocked (struct filedesc*,int,int *,struct file**,int *) ;

__attribute__((used)) static __inline int
getselfd_cap(struct filedesc *fdp, int fd, struct file **fpp)
{

 return (fget_unlocked(fdp, fd, &cap_event_rights, fpp, ((void*)0)));
}
