
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_rights_t ;


 int CAP_ALL (int *) ;
 int CAP_IOCTL ;
 int CHECK (int) ;
 scalar_t__ ENOTCAPABLE ;
 scalar_t__ FD_CLOEXEC ;
 unsigned long FIOCLEX ;
 unsigned long FIONCLEX ;
 int F_GETFD ;
 int F_SETFD ;
 scalar_t__ cap_ioctls_get (int,unsigned long*,int) ;
 int cap_ioctls_limit (int,unsigned long*,int) ;
 int cap_rights_clear (int *,int ) ;
 scalar_t__ cap_rights_limit (int,int *) ;
 scalar_t__ errno ;
 scalar_t__ fcntl (int,int ,...) ;
 int ioctl (int,unsigned long) ;
 int nitems (unsigned long*) ;

__attribute__((used)) static void
ioctl_tests_2(int fd)
{
 unsigned long cmds[2];
 cap_rights_t rights;

 CAP_ALL(&rights);
 cap_rights_clear(&rights, CAP_IOCTL);

 CHECK(cap_rights_limit(fd, &rights) == 0);
 CHECK(cap_ioctls_get(fd, cmds, nitems(cmds)) == 0);

 cmds[0] = FIOCLEX;
 cmds[1] = FIONCLEX;
 errno = 0;
 CHECK(cap_ioctls_limit(fd, cmds, nitems(cmds)) == -1);
 CHECK(errno == ENOTCAPABLE);
 CHECK(cap_ioctls_get(fd, cmds, nitems(cmds)) == 0);
 cmds[0] = FIOCLEX;
 errno = 0;
 CHECK(cap_ioctls_limit(fd, cmds, 1) == -1);
 CHECK(errno == ENOTCAPABLE);
 CHECK(cap_ioctls_get(fd, cmds, nitems(cmds)) == 0);

 CHECK(fcntl(fd, F_GETFD) == 0);
 errno = 0;
 CHECK(ioctl(fd, FIOCLEX) == -1);
 CHECK(errno == ENOTCAPABLE);
 CHECK(fcntl(fd, F_GETFD) == 0);
 CHECK(fcntl(fd, F_SETFD, FD_CLOEXEC) == 0);
 CHECK(fcntl(fd, F_GETFD) == FD_CLOEXEC);
 errno = 0;
 CHECK(ioctl(fd, FIONCLEX) == -1);
 CHECK(errno == ENOTCAPABLE);
 CHECK(fcntl(fd, F_GETFD) == FD_CLOEXEC);
 CHECK(fcntl(fd, F_SETFD, 0) == 0);
 CHECK(fcntl(fd, F_GETFD) == 0);
}
