
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct addrinfo {scalar_t__ ai_family; struct addrinfo* ai_next; int ai_addrlen; int ai_addr; } ;
struct TYPE_3__ {int tv_sec; int tv_nsec; } ;
struct TYPE_4__ {void* sin_port; void* sin6_port; } ;
struct _a {int ipv6; long port; long port_max; long packet_len; int s; void* duration; TYPE_1__ interval; struct _a* packet; TYPE_2__ sin; TYPE_2__ sin6; } ;
typedef int intmax_t ;
typedef int hints ;
typedef int a ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 long MAX_RATE ;
 int PF_INET ;
 int PF_INET6 ;
 int SOCK_DGRAM ;
 int bzero (struct _a*,long) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 void* htons (long) ;
 struct _a* malloc (long) ;
 int memcpy (TYPE_2__*,int ,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 int perror (char*) ;
 int printf (char*,long,int ,int,void*) ;
 void* socket (int ,int ,int ) ;
 int stderr ;
 void* strtoul (char*,char**,int) ;
 int timing_loop (struct _a*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 long rate, payloadsize, port;
 char *dummy;
 struct _a a;
 struct addrinfo hints, *res, *ressave;

 bzero(&a, sizeof(a));

 if (argc != 6)
  usage();

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = AF_UNSPEC;

 if (getaddrinfo(argv[1], ((void*)0), &hints, &res) != 0) {
  fprintf(stderr, "Couldn't resolv %s\n", argv[1]);
  return (-1);
 }
 ressave = res;
 while (res) {
  if (res->ai_family == AF_INET) {
   memcpy(&a.sin, res->ai_addr, res->ai_addrlen);
   a.ipv6 = 0;
   break;
  } else if (res->ai_family == AF_INET6) {
   memcpy(&a.sin6, res->ai_addr, res->ai_addrlen);
   a.ipv6 = 1;
   break;
  }
  res = res->ai_next;
 }
 if (!res) {
  fprintf(stderr, "Couldn't resolv %s\n", argv[1]);
  exit(1);
 }
 freeaddrinfo(ressave);

 port = strtoul(argv[2], &dummy, 10);
 if (port < 1 || port > 65535)
  usage();
 if (*dummy != '\0' && *dummy != '-')
  usage();
 if (a.ipv6)
  a.sin6.sin6_port = htons(port);
 else
  a.sin.sin_port = htons(port);
 a.port = a.port_max = port;
 if (*dummy == '-') {
  port = strtoul(dummy + 1, &dummy, 10);
  if (port < a.port || port > 65535)
   usage();
  a.port_max = port;
 }

 payloadsize = strtoul(argv[3], &dummy, 10);
 if (payloadsize < 0 || *dummy != '\0')
  usage();
 if (payloadsize > 32768) {
  fprintf(stderr, "payloadsize > 32768\n");
  return (-1);
 }
 a.packet_len = payloadsize;






 rate = strtoul(argv[4], &dummy, 10);
 if (rate < 0 || *dummy != '\0')
  usage();
 if (rate > MAX_RATE) {
  fprintf(stderr, "packet rate at most %d\n", MAX_RATE);
  return (-1);
 }

 a.duration = strtoul(argv[5], &dummy, 10);
 if (a.duration < 0 || *dummy != '\0')
  usage();

 a.packet = malloc(payloadsize);
 if (a.packet == ((void*)0)) {
  perror("malloc");
  return (-1);
 }
 bzero(a.packet, payloadsize);
 if (rate == 0) {
  a.interval.tv_sec = 0;
  a.interval.tv_nsec = 0;
 } else if (rate == 1) {
  a.interval.tv_sec = 1;
  a.interval.tv_nsec = 0;
 } else {
  a.interval.tv_sec = 0;
  a.interval.tv_nsec = ((1 * 1000000000) / rate);
 }

 printf("Sending packet of payload size %ld every %jd.%09lds for %ld "
     "seconds\n", payloadsize, (intmax_t)a.interval.tv_sec,
     a.interval.tv_nsec, a.duration);

 if (a.ipv6)
  a.s = socket(PF_INET6, SOCK_DGRAM, 0);
 else
  a.s = socket(PF_INET, SOCK_DGRAM, 0);
 if (a.s == -1) {
  perror("socket");
  return (-1);
 }

 return (timing_loop(&a));
}
