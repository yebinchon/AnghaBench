
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; } ;
typedef int sock ;
typedef int ifsun ;


 int PF_LOCAL ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,int ,int) ;
 int err (int,char*) ;
 int prepare_ifsun (struct sockaddr_un*,char const*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int sstosa (struct sockaddr_un*) ;
 int unlink (int ) ;

__attribute__((used)) static int
create_uds_server(const char *path)
{
    struct sockaddr_un ifsun;
    int sock;

    prepare_ifsun(&ifsun, path);

    unlink(ifsun.sun_path);

    sock = socket(PF_LOCAL, SOCK_DGRAM, 0);
    if (sock == -1)
        err(1, "can't create socket");
    setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &sock, sizeof(sock));
    if (bind(sock, sstosa(&ifsun), sizeof(ifsun)) < 0)
        err(1, "can't bind to a socket");

    return sock;
}
