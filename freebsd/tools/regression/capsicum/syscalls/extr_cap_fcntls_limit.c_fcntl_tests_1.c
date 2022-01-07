
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int cap_rights_t ;


 int CAP_ALL (int *) ;
 int CAP_FCNTL ;
 scalar_t__ CAP_FCNTL_ALL ;
 scalar_t__ CAP_FCNTL_GETFL ;
 scalar_t__ CAP_FCNTL_SETFL ;
 int CHECK (int) ;
 scalar_t__ ENOTCAPABLE ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_GETFL ;
 int F_SETFD ;
 int F_SETFL ;
 int O_NONBLOCK ;
 scalar_t__ cap_fcntls_get (int,scalar_t__*) ;
 int cap_fcntls_limit (int,scalar_t__) ;
 int cap_rights_clear (int *,int ) ;
 scalar_t__ cap_rights_limit (int,int *) ;
 scalar_t__ errno ;
 int fcntl (int,int ,...) ;

__attribute__((used)) static void
fcntl_tests_1(int fd)
{
 uint32_t fcntlrights;
 cap_rights_t rights;

 CHECK(cap_fcntls_limit(fd, CAP_FCNTL_GETFL) == 0);
 fcntlrights = 0;
 CHECK(cap_fcntls_get(fd, &fcntlrights) == 0);
 CHECK(fcntlrights == CAP_FCNTL_GETFL);

 CAP_ALL(&rights);
 cap_rights_clear(&rights, CAP_FCNTL);
 CHECK(cap_rights_limit(fd, &rights) == 0);

 fcntlrights = CAP_FCNTL_ALL;
 CHECK(cap_fcntls_get(fd, &fcntlrights) == 0);
 CHECK(fcntlrights == 0);

 errno = 0;
 CHECK(cap_fcntls_limit(fd, CAP_FCNTL_GETFL | CAP_FCNTL_SETFL) == -1);
 CHECK(errno == ENOTCAPABLE);
 fcntlrights = CAP_FCNTL_ALL;
 CHECK(cap_fcntls_get(fd, &fcntlrights) == 0);
 CHECK(fcntlrights == 0);
 errno = 0;
 CHECK(cap_fcntls_limit(fd, CAP_FCNTL_GETFL) == -1);
 CHECK(errno == ENOTCAPABLE);
 fcntlrights = CAP_FCNTL_ALL;
 CHECK(cap_fcntls_get(fd, &fcntlrights) == 0);
 CHECK(fcntlrights == 0);

 CHECK(fcntl(fd, F_GETFD) == 0);
 CHECK(fcntl(fd, F_SETFD, FD_CLOEXEC) == 0);
 CHECK(fcntl(fd, F_GETFD) == FD_CLOEXEC);
 CHECK(fcntl(fd, F_SETFD, 0) == 0);
 CHECK(fcntl(fd, F_GETFD) == 0);

 errno = 0;
 CHECK(fcntl(fd, F_GETFL) == -1);
 CHECK(errno == ENOTCAPABLE);
 errno = 0;
 CHECK(fcntl(fd, F_SETFL, O_NONBLOCK) == -1);
 CHECK(errno == ENOTCAPABLE);
 errno = 0;
 CHECK(fcntl(fd, F_SETFL, 0) == -1);
 CHECK(errno == ENOTCAPABLE);
 errno = 0;
 CHECK(fcntl(fd, F_GETFL) == -1);
 CHECK(errno == ENOTCAPABLE);
}
