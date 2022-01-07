
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sun ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_un {int sun_len; int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; int sun_path; int sun_family; } ;
struct sockaddr_in {int sun_len; int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;


 int AF_INET ;
 int AF_LOCAL ;
 int INADDR_LOOPBACK ;
 int PF_INET ;
 int PF_LOCAL ;
 int SOCK_STREAM ;
 int bzero (struct sockaddr_un*,int) ;
 int close (int) ;
 char* dpath ;
 int htonl (int ) ;
 int htons (int ) ;
 int my_bind (int,struct sockaddr*,int) ;
 int my_listen (int,int) ;
 int my_socket (int ,int ,int ) ;
 int printf (char*,char*) ;
 int save_sysctls (int*,int*) ;
 int snprintf (int ,int,char*,char*,char*) ;
 char* test ;
 int test_sysctls (int,int) ;
 int unlink (int ) ;

__attribute__((used)) static void
listen_nothing(void)
{
 struct sockaddr_un sun;
 struct sockaddr_in sin;
 int inflight, openfiles;
 int s;

 test = "listen_nothing_unp";
 printf("%s\n", test);
 bzero(&sun, sizeof(sun));
 sun.sun_family = AF_LOCAL;
 sun.sun_len = sizeof(sun);
 snprintf(sun.sun_path, sizeof(sun.sun_path), "%s/%s", dpath, test);
 save_sysctls(&inflight, &openfiles);
 s = my_socket(PF_LOCAL, SOCK_STREAM, 0);
 my_bind(s, (struct sockaddr *)&sun, sizeof(sun));
 my_listen(s, -1);
 close(s);
 (void)unlink(sun.sun_path);
 test_sysctls(inflight, openfiles);

 test = "listen_nothing_inet";
 printf("%s\n", test);
 bzero(&sin, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(sin);
 sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 sin.sin_port = htons(0);
 save_sysctls(&inflight, &openfiles);
 s = my_socket(PF_INET, SOCK_STREAM, 0);
 my_bind(s, (struct sockaddr *)&sin, sizeof(sin));
 my_listen(s, -1);
 close(s);
 test_sysctls(inflight, openfiles);
}
