
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sin ;


 int PF_INET ;
 int SOCK_STREAM ;
 int close4 (int,int,int,int) ;
 int my_bind (int,struct sockaddr*,int) ;
 int my_connect (int,struct sockaddr*,int) ;
 int my_getsockname (int,struct sockaddr*,int*) ;
 int my_listen (int,int) ;
 int my_socket (int ,int ,int ) ;
 int my_socketpair (int*) ;
 int printf (char*,char*) ;
 int save_sysctls (int*,int*) ;
 int setnonblock (int) ;
 int sleep (int) ;
 char* test ;
 int test_sysctls (int,int) ;

__attribute__((used)) static void
listen_connect_nothing(void)
{
 struct sockaddr_in sin;
 int slisten, sconnect, sv[2];
 int inflight, openfiles;
 socklen_t len;

 test = "listen_connect_nothing";
 printf("%s\n", test);
 save_sysctls(&inflight, &openfiles);

 slisten = my_socket(PF_INET, SOCK_STREAM, 0);
 my_bind(slisten, (struct sockaddr *)&sin, sizeof(sin));
 my_listen(slisten, -1);

 my_socketpair(sv);

 len = sizeof(sin);
 my_getsockname(slisten, (struct sockaddr *)&sin, &len);

 sconnect = my_socket(PF_INET, SOCK_STREAM, 0);
 setnonblock(sconnect);
 my_connect(sconnect, (struct sockaddr *)&sin, len);

 sleep(1);

 close4(slisten, sconnect, sv[0], sv[1]);

 test_sysctls(inflight, openfiles);
}
