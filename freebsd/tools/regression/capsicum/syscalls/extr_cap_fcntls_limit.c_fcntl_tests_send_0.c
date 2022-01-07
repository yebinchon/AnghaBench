
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNIX ;
 int CAP_FCNTL_GETFL ;
 int CAP_FCNTL_SETFL ;
 int CHECK (int) ;
 int SOCK_STREAM ;
 scalar_t__ cap_fcntls_limit (int,int) ;
 scalar_t__ close (int) ;
 scalar_t__ descriptor_send (int,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
fcntl_tests_send_0(int sock)
{
 int fd;

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 CHECK(descriptor_send(sock, fd) == 0);
 CHECK(close(fd) == 0);

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 CHECK(cap_fcntls_limit(fd, CAP_FCNTL_GETFL | CAP_FCNTL_SETFL) == 0);
 CHECK(descriptor_send(sock, fd) == 0);
 CHECK(close(fd) == 0);

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 CHECK(cap_fcntls_limit(fd, CAP_FCNTL_GETFL) == 0);
 CHECK(descriptor_send(sock, fd) == 0);
 CHECK(close(fd) == 0);

 CHECK((fd = socket(AF_UNIX, SOCK_STREAM, 0)) >= 0);
 CHECK(cap_fcntls_limit(fd, 0) == 0);
 CHECK(descriptor_send(sock, fd) == 0);
 CHECK(close(fd) == 0);
}
