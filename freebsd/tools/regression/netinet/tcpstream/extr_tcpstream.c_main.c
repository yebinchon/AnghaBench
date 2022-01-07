
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; void* sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
typedef int sin ;


 void* AF_INET ;
 int EINVAL ;
 int INADDR_ANY ;
 int bzero (struct sockaddr_in*,int) ;
 int errx (int,char*,char*,int ) ;
 void* htons (long) ;
 int inet_aton (char*,TYPE_1__*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (int ) ;
 long strtoul (char*,char**,int) ;
 int tcpstream_client (struct sockaddr_in,long) ;
 int tcpstream_server (struct sockaddr_in,long) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct sockaddr_in sin;
 long port, seed;
 char *dummy;

 if (argc < 2)
  usage();
 if (strcmp(argv[1], "client") == 0) {
  if (argc != 5)
   usage();

  bzero(&sin, sizeof(sin));
  sin.sin_len = sizeof(sin);
  sin.sin_family = AF_INET;

  if (inet_aton(argv[2], &sin.sin_addr) != 1)
   errx(-1, "%s: %s", argv[2], strerror(EINVAL));

  port = strtoul(argv[3], &dummy, 10);
  if (port < 1 || port > 65535 || *dummy != '\0')
   usage();
  sin.sin_port = htons(port);

  seed = strtoul(argv[4], &dummy, 10);
  if (*dummy != '\0')
   usage();

  tcpstream_client(sin, seed);

 } else if (strcmp(argv[1], "server") == 0) {
  if (argc != 4)
   usage();

  bzero(&sin, sizeof(sin));
  sin.sin_len = sizeof(sin);
  sin.sin_family = AF_INET;
  sin.sin_addr.s_addr = INADDR_ANY;

  port = strtoul(argv[2], &dummy, 10);
  if (port < 1 || port > 65535 || *dummy != '\0')
   usage();
  sin.sin_port = htons(port);

  seed = strtoul(argv[3], &dummy, 10);
  if (*dummy != '\0')
   usage();

  tcpstream_server(sin, seed);
 } else
  usage();

 return (0);
}
