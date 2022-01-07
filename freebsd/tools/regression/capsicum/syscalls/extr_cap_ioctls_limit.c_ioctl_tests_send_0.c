
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNIX ;
 int CHECK (int) ;
 unsigned long FIOCLEX ;
 unsigned long FIONCLEX ;
 int SOCK_STREAM ;
 scalar_t__ cap_ioctls_limit (int,unsigned long*,int) ;
 scalar_t__ close (int) ;
 scalar_t__ descriptor_send (int,int) ;
 int nitems (unsigned long*) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
ioctl_tests_send_0(int sock)
{
 unsigned long cmds[2];
 int fd;

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 CHECK(descriptor_send(sock, fd) == 0);
 CHECK(close(fd) == 0);

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 cmds[0] = FIOCLEX;
 cmds[1] = FIONCLEX;
 CHECK(cap_ioctls_limit(fd, cmds, nitems(cmds)) == 0);
 CHECK(descriptor_send(sock, fd) == 0);
 CHECK(close(fd) == 0);

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 cmds[0] = FIOCLEX;
 CHECK(cap_ioctls_limit(fd, cmds, 1) == 0);
 CHECK(descriptor_send(sock, fd) == 0);
 CHECK(close(fd) == 0);

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 CHECK(cap_ioctls_limit(fd, ((void*)0), 0) == 0);
 CHECK(descriptor_send(sock, fd) == 0);
 CHECK(close(fd) == 0);
}
