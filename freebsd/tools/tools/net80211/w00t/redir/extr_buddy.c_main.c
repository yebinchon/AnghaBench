
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; int sin_port; } ;
struct sockaddr {int dummy; } ;
typedef int s_in ;


 int INADDR_ANY ;
 int IPPROTO_TCP ;
 int PF_INET ;
 int SIGPIPE ;
 scalar_t__ SIG_ERR ;
 int SOCK_RAW ;
 int SOCK_STREAM ;
 int accept (int,struct sockaddr*,int*) ;
 int bind (int,struct sockaddr*,int) ;
 int err (int,char*) ;
 int hand ;
 int handle_dude (int,int) ;
 int htons (int) ;
 char* inet_ntoa (TYPE_1__) ;
 int listen (int,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int printf (char*,...) ;
 scalar_t__ signal (int ,int ) ;
 int socket (int ,int ,int ) ;

int main(int argc, char *argv[])
{
 int s, dude;
 struct sockaddr_in s_in;
 int len;
 int raw;

 memset(&s_in, 0, sizeof(s_in));
 s_in.sin_family = PF_INET;
 s_in.sin_port = htons(666);
 s_in.sin_addr.s_addr = INADDR_ANY;

 if ((raw = socket(PF_INET, SOCK_RAW, 0)) == -1)
  err(1, "socket()");

 if ((s = socket(s_in.sin_family, SOCK_STREAM, IPPROTO_TCP)) == -1)
  err(1, "socket()");

 if (bind(s, (struct sockaddr*)&s_in, sizeof(s_in)) == -1)
  err(1, "bind()");

 if (listen(s, 5) == -1)
  err(1, "listen()");

 if (signal(SIGPIPE, hand) == SIG_ERR)
  err(1, "signal()");

 while (1) {
  len = sizeof(s_in);
  dude = accept(s, (struct sockaddr*)&s_in, &len);
  if (dude == -1)
   err(1, "accept()");

  printf("Got dude %s\n", inet_ntoa(s_in.sin_addr));
  handle_dude(dude, raw);
  printf("Done\n");
 }
}
