
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_INET ;
 int SOCK_STREAM ;
 int close (int) ;
 int exit (int) ;
 scalar_t__ socket_listen (int ,int ,int ,int,int ,int,int*,char*,char*,char*,char*) ;
 int somaxconn ;

__attribute__((used)) static void
test_defaults(void)
{
 int sock;





 if (socket_listen(PF_INET, SOCK_STREAM, 0, 0, 0, 0, &sock, "PF_INET",
     "SOCK_STREAM", "test_defaults", "default_0_listen_0") < 0)
  exit(-1);
 close(sock);





 if (socket_listen(PF_INET, SOCK_STREAM, 0, -1, 0, somaxconn, &sock,
     "PF_INET", "SOCK_STREAM", "test_defaults", "default_0_listen_-1")
     < 0)
  exit(-1);
 close(sock);





 if (socket_listen(PF_INET, SOCK_STREAM, 0, 1, 0, 1, &sock, "PF_INET",
     "SOCK_STREAM", "test_defaults", "default_0_listen_1") < 0)
  exit(-1);
 close(sock);





 if (socket_listen(PF_INET, SOCK_STREAM, 0, somaxconn, 0, somaxconn,
     &sock, "PF_INET", "SOCK_STREAM", "test_defaults",
     "default_0_listen_somaxconn") < 0)
  exit(-1);
 close(sock);





 if (socket_listen(PF_INET, SOCK_STREAM, 0, somaxconn+1, 0, somaxconn,
     &sock, "PF_INET", "SOCK_STREAM", "test_defaults",
     "default_0_listen_somaxconn+1") < 0)
  exit(-1);
 close(sock);
}
