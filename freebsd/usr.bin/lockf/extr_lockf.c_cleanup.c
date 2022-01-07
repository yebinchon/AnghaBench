
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCK_UN ;
 int flock (int ,int ) ;
 scalar_t__ keep ;
 int lockfd ;
 int lockname ;
 int unlink (int ) ;

__attribute__((used)) static void
cleanup(void)
{

 if (keep)
  flock(lockfd, LOCK_UN);
 else
  unlink(lockname);
}
