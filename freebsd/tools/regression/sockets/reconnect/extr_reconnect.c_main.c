
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_LOCAL ;
 int SOCK_DGRAM ;
 int atexit (int ) ;
 int cleanup ;
 int close (int) ;
 int connect_uds_server (int,int ) ;
 int create_uds_server (int ) ;
 int err (int,char*) ;
 int exit (int ) ;
 int mkstemp (int ) ;
 int socket (int ,int ,int ) ;
 int uds_name1 ;
 int uds_name2 ;
 int unlink (int ) ;

int
main(void)
{
    int s_sock1, s_sock2, c_sock;

    atexit(cleanup);

    if (mkstemp(uds_name1) == -1)
 err(1, "mkstemp");
    unlink(uds_name1);
    s_sock1 = create_uds_server(uds_name1);

    if (mkstemp(uds_name2) == -1)
        err(1, "mkstemp");
    unlink(uds_name2);
    s_sock2 = create_uds_server(uds_name2);

    c_sock = socket(PF_LOCAL, SOCK_DGRAM, 0);
    if (c_sock < 0)
        err(1, "can't create socket");

    connect_uds_server(c_sock, uds_name1);
    close(s_sock1);
    connect_uds_server(c_sock, uds_name2);
    close(s_sock2);

    exit (0);
}
