
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sun ;
struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;


 int AF_INET ;
 int AF_LOCAL ;
 int INADDR_LOOPBACK ;
 int PF_INET ;
 int PF_LOCAL ;
 int SOCK_STREAM ;
 int bzero (struct sockaddr_un*,int) ;
 int close3 (int,int,int) ;
 char* dpath ;
 int htonl (int ) ;
 int htons (int ) ;
 int my_bind (int,struct sockaddr*,int) ;
 int my_listen (int,int) ;
 int my_socket (int ,int ,int ) ;
 int my_socketpair (int*) ;
 int printf (char*,char*) ;
 int save_sysctls (int*,int*) ;
 int sendfd (int,int) ;
 int snprintf (int ,int,char*,char*,char*) ;
 char* test ;
 int test_sysctls (int,int) ;

__attribute__((used)) static void
listen_drop(void)
{
 struct sockaddr_un sun;
 struct sockaddr_in sin;
 int inflight, openfiles;
 int s, sv[2];

 bzero(&sun, sizeof(sun));
 sun.sun_family = AF_LOCAL;
 sun.sun_len = sizeof(sun);




 test = "listen_drop_unp1";
 printf("%s\n", test);
 snprintf(sun.sun_path, sizeof(sun.sun_path), "%s/%s", dpath, test);
 save_sysctls(&inflight, &openfiles);
 s = my_socket(PF_LOCAL, SOCK_STREAM, 0);
 my_bind(s, (struct sockaddr *)&sun, sizeof(sun));
 my_listen(s, -1);
 my_socketpair(sv);
 sendfd(sv[0], s);
 close3(s, sv[0], sv[1]);
 test_sysctls(inflight, openfiles);




 test = "listen_drop_unp2";
 printf("%s\n", test);
 snprintf(sun.sun_path, sizeof(sun.sun_path), "%s/%s", dpath, test);
 save_sysctls(&inflight, &openfiles);
 s = my_socket(PF_LOCAL, SOCK_STREAM, 0);
 my_bind(s, (struct sockaddr *)&sun, sizeof(sun));
 my_listen(s, -1);
 my_socketpair(sv);
 sendfd(sv[0], s);
 close3(sv[0], sv[1], s);
 test_sysctls(inflight, openfiles);

 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(sin);
 sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 sin.sin_port = htons(0);




 test = "listen_drop_inet1";
 printf("%s\n", test);
 bzero(&sun, sizeof(sun));
 save_sysctls(&inflight, &openfiles);
 s = my_socket(PF_INET, SOCK_STREAM, 0);
 my_bind(s, (struct sockaddr *)&sin, sizeof(sin));
 my_listen(s, -1);
 my_socketpair(sv);
 sendfd(sv[0], s);
 close3(s, sv[0], sv[1]);
 test_sysctls(inflight, openfiles);




 test = "listen_drop_inet2";
 printf("%s\n", test);
 bzero(&sun, sizeof(sun));
 save_sysctls(&inflight, &openfiles);
 s = my_socket(PF_INET, SOCK_STREAM, 0);
 my_bind(s, (struct sockaddr *)&sin, sizeof(sin));
 my_listen(s, -1);
 my_socketpair(sv);
 sendfd(sv[0], s);
 close3(sv[0], sv[1], s);
 test_sysctls(inflight, openfiles);
}
