
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int hints ;


 int PF_UNSPEC ;
 int SOCK_DGRAM ;
 int blast_loop (int,long,char*,long) ;
 int bzero (char*,long) ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int fprintf (int ,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 char const* gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 char* malloc (long) ;
 int memset (struct addrinfo*,int ,int) ;
 int perror (char const*) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 void* strtoul (char*,char**,int) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 long payloadsize, duration;
 struct addrinfo hints, *res, *res0;
 char *dummy, *packet;
 int port, s, error;
 const char *cause = ((void*)0);

 if (argc != 5)
  usage();

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_DGRAM;

 port = strtoul(argv[2], &dummy, 10);
 if (port < 1 || port > 65535 || *dummy != '\0') {
  fprintf(stderr, "Invalid port number: %s\n", argv[2]);
  usage();

 }

 payloadsize = strtoul(argv[3], &dummy, 10);
 if (payloadsize < 0 || *dummy != '\0')
  usage();
 if (payloadsize > 32768) {
  fprintf(stderr, "payloadsize > 32768\n");
  return (-1);

 }

 duration = strtoul(argv[4], &dummy, 10);
 if (duration < 0 || *dummy != '\0') {
  fprintf(stderr, "Invalid duration time: %s\n", argv[4]);
  usage();

 }

 packet = malloc(payloadsize);
 if (packet == ((void*)0)) {
  perror("malloc");
  return (-1);

 }

 bzero(packet, payloadsize);
 error = getaddrinfo(argv[1],argv[2], &hints, &res0);
 if (error) {
  perror(gai_strerror(error));
  return (-1);

 }
 s = -1;
 for (res = res0; res; res = res->ai_next) {
  s = socket(res->ai_family, res->ai_socktype, 0);
  if (s < 0) {
   cause = "socket";
   continue;
  }

  if (connect(s, res->ai_addr, res->ai_addrlen) < 0) {
   cause = "connect";
   close(s);
   s = -1;
   continue;
  }

  break;
 }
 if (s < 0) {
  perror(cause);
  return (-1);

 }

 freeaddrinfo(res0);

 return (blast_loop(s, duration, packet, payloadsize));

}
