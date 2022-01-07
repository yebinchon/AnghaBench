
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int dummy; } ;
typedef int ifsun ;


 int connect (int,int ,int) ;
 int err (int,char*) ;
 int prepare_ifsun (struct sockaddr_un*,char const*) ;
 int sstosa (struct sockaddr_un*) ;

__attribute__((used)) static void
connect_uds_server(int sock, const char *path)
{
    struct sockaddr_un ifsun;
    int e;

    prepare_ifsun(&ifsun, path);

    e = connect(sock, sstosa(&ifsun), sizeof(ifsun));
    if (e < 0)
        err(1, "can't connect to a socket");
}
