
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_INET ;
 int SOCK_STREAM ;
 int close (int) ;
 int exit (int) ;
 scalar_t__ socket_listen_update (int ,int ,int ,int,int,int,int,int*,char*,char*,char*,char*) ;
 int somaxconn ;

__attribute__((used)) static void
test_listen_update(void)
{
 int sock;




 if (socket_listen_update(PF_INET, SOCK_STREAM, 0, 5, -1, 5, somaxconn,
     &sock, "PF_INET", "SOCK_STREAM", "test_listen_update",
     "update_5,-1") < 0)
  exit(-1);
 close(sock);




 if (socket_listen_update(PF_INET, SOCK_STREAM, 0, 5, 0, 5, 0, &sock,
     "PF_INET", "SOCK_STREAM", "test_listen_update", "update_5,0")
     < 0)
  exit(-1);
 close(sock);




 if (socket_listen_update(PF_INET, SOCK_STREAM, 0, 5, 1, 5, 1, &sock,
     "PF_INET", "SOCK_STREAM", "test_listen_update", "update_5,1")
     < 0)
  exit(-1);
 close(sock);




 if (socket_listen_update(PF_INET, SOCK_STREAM, 0, 5, somaxconn, 5,
     somaxconn, &sock, "PF_INET", "SOCK_STREAM", "test_listen_update",
     "update_5,somaxconn") < 0)
  exit(-1);
 close(sock);




 if (socket_listen_update(PF_INET, SOCK_STREAM, 0, 5, somaxconn+1, 5,
     somaxconn, &sock, "PF_INET", "SOCK_STREAM", "test_listen_update",
     "update_5,somaxconn+1") < 0)
  exit(-1);
 close(sock);
}
