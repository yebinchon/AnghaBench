
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCK_EX ;
 int LOCK_UN ;
 int flock (int,int ) ;

__attribute__((used)) static void *
flock_thread(void *arg)
{
 int fd;

 fd = *(int *)arg;
 (void)flock(fd, LOCK_EX);
 (void)flock(fd, LOCK_UN);
 return (((void*)0));
}
