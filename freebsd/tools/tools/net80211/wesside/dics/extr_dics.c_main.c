
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct pcap_pkthdr {scalar_t__ caplen; } ;
typedef int s_in ;
typedef int rd ;
typedef int pcap_t ;
typedef int fd_set ;




 int DPORT ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int INADDR_ANY ;
 int IPPROTO_IP ;
 int IPPROTO_UDP ;
 int IP_HDRINCL ;
 int IP_RECVTTL ;
 int PCAP_ERRBUF_SIZE ;
 int PF_INET ;
 unsigned char PRGA_LEN ;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 unsigned char TTLSENT ;
 int atoi (char*) ;
 int bind (int,struct sockaddr*,int) ;
 scalar_t__ check_signal (int,char*,...) ;
 int close (int) ;
 int exit (int) ;
 int htons (int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int pcap_close (int *) ;
 int pcap_datalink (int *) ;
 int * pcap_next (int *,struct pcap_pkthdr*) ;
 int * pcap_open_live (char*,int,int ,int,char*) ;
 int perror (char*) ;
 int pps ;
 int printf (char*,...) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int send_stuff (int,unsigned char*,char*,unsigned short,unsigned char) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

int main(int argc, char *argv[]) {
 int s, us;
 int rd = 1;
 int got_it = 0;
 char ip[16] = "\x00";
 unsigned char ttl = 0;
 unsigned short port;
 struct sockaddr_in s_in;
 struct timeval tv;
 fd_set rfds;
 unsigned char* sip = 0;

 if (argc < 2) {
  printf("Usage: %s <sip> [pps]\n", argv[0]);
  exit(1);
 }

 if (argc > 2) {
  pps = atoi(argv[2]);
 }

 printf("PPS=%d\n", pps);

 sip = argv[1];

 memset(&s_in, 0, sizeof(s_in));
 us = socket (PF_INET, SOCK_DGRAM, IPPROTO_UDP);
 if (s == -1) {
  perror("socket()");
  exit(1);
 }
 s_in.sin_family = PF_INET;
 s_in.sin_addr.s_addr = INADDR_ANY;
 s_in.sin_port = htons(DPORT);
 if (bind (us, (struct sockaddr*)&s_in, sizeof(s_in)) == -1) {
  perror("bind()");
  exit(1);
 }

 rd = 1;
 if (setsockopt(us, IPPROTO_IP, IP_RECVTTL, &rd, sizeof(rd)) == -1) {
  perror("setsockopt()");
  exit(1);
 }

 s = socket (PF_INET, SOCK_RAW, IPPROTO_UDP);
 if (s == -1) {
  perror("socket()");
  exit(1);
 }

 rd = 1;
 if (setsockopt(s, IPPROTO_IP, IP_HDRINCL, &rd, sizeof(rd)) == -1) {
  perror("setsockopt()");
  exit(1);
 }
 while (1) {
  FD_ZERO(&rfds);
  FD_SET(us, &rfds);
  tv.tv_sec = 0;
  tv.tv_usec = 10*1000;
  rd = select(us+1, &rfds, ((void*)0), ((void*)0), &tv);
  if (rd == -1) {
   perror("select()");
   exit(1);
  }
  if (rd == 1 && FD_ISSET(us, &rfds)) {
   char ipnew[16];
   unsigned char ttlnew;
   if (check_signal(us, ipnew, &ttlnew, &port)) {
    int send_ttl = 0;
    if (ttlnew != ttl || strcmp(ipnew, ip) != 0 ||
        got_it == 0) {
         send_ttl = 1;
    }
    ttl = ttlnew;
    strcpy(ip, ipnew);

    printf("Got signal from %s:%d TTL=%d\n",
           ip, port, ttl);
    got_it = 2;

    if (send_ttl) {
     printf("Sending ttl (%d)...\n", ttl);
     send_stuff(s, sip, ip, port, 69 + (TTLSENT-ttl));
    }
   }
  }

  if (got_it) {
   printf("Sending stuff to %s...\n", ip);
   send_stuff(s, sip, ip, port, PRGA_LEN);
   got_it--;

   if (got_it == 0) {
    printf("Stopping send\n");
   }
  }
 }





 close(s);
 close(us);
 exit(0);
}
