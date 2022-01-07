
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int server ;


 int AF_INET ;
 int INADDR_ANY ;
 int SOCK_STREAM ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 int exit (int) ;
 int htons (int) ;
 int http_port ;
 scalar_t__ http_sock ;
 int perror (char*) ;
 int printf (char*,int) ;
 scalar_t__ socket (int ,int ,int ) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
init_servconnection(void)
{
 struct sockaddr_in server;


 http_sock = socket(AF_INET, SOCK_STREAM, 0);
 if (http_sock < 0) {
  perror("socket");
  exit(1);
 }
 server.sin_family = AF_INET;
 server.sin_port = htons(http_port);
 server.sin_addr.s_addr = INADDR_ANY;
 if (bind(http_sock, (struct sockaddr *) & server, sizeof(server)) < 0) {
  perror("bind socket");
  exit(1);
 }
        if (verbose) printf("simple_httpd:%d\n",http_port);
}
