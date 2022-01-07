
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct tftphdr {scalar_t__ th_opcode; int th_stuff; } ;
struct tftp_stats {scalar_t__ amount; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in {int sin_port; } ;
struct servent {int s_port; } ;
typedef int serv ;


 int DEBUG_SIMPLE ;
 int EBADOP ;
 scalar_t__ ERROR ;
 int MAXPKTSIZE ;
 scalar_t__ OACK ;
 int RP_TIMEOUT ;
 int assert (int ) ;
 int atoi (char*) ;
 int debug ;
 struct servent* getservbyname (char*,char*) ;
 int htons (int ) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int options_rfc_enabled ;
 int parse_options (int,int ,int) ;
 int peer_sock ;
 int printf (char*,...) ;
 int printstats (char*,int ,struct tftp_stats*) ;
 int read_close () ;
 scalar_t__ read_init (int,int *,char*) ;
 int receive_packet (int,char*,int,struct sockaddr_storage*,int ) ;
 int send_error (int,int ) ;
 int send_wrq (int,char*,char*) ;
 int stats_init (struct tftp_stats*) ;
 int tftp_send (int,int*,struct tftp_stats*) ;
 int timeoutpacket ;
 int txrx_error ;
 int verbose ;
 int warn (char*) ;

void
xmitfile(int peer, char *port, int fd, char *name, char *mode)
{
 struct tftphdr *rp;
 int n, i;
 uint16_t block;
 struct sockaddr_storage serv;
 char recvbuffer[MAXPKTSIZE];
 struct tftp_stats tftp_stats;

 stats_init(&tftp_stats);

 memset(&serv, 0, sizeof(serv));
 rp = (struct tftphdr *)recvbuffer;

 if (port == ((void*)0)) {
  struct servent *se;
  se = getservbyname("tftp", "udp");
  assert(se != ((void*)0));
  ((struct sockaddr_in *)&peer_sock)->sin_port = se->s_port;
 } else
  ((struct sockaddr_in *)&peer_sock)->sin_port =
      htons(atoi(port));

 for (i = 0; i < 12; i++) {
  struct sockaddr_storage from;


  if (debug&DEBUG_SIMPLE)
   printf("Sending %s\n", name);

  n = send_wrq(peer, name, mode);
  if (n > 0) {
   printf("Cannot send WRQ packet\n");
   return;
  }





  n = receive_packet(peer, recvbuffer,
      MAXPKTSIZE, &from, timeoutpacket);


  if (n >= 0) {
   ((struct sockaddr_in *)&peer_sock)->sin_port =
       ((struct sockaddr_in *)&from)->sin_port;
   break;
  }


  if (n == RP_TIMEOUT) {
   printf("Try %d, didn't receive answer from remote.\n",
       i + 1);
   continue;
  }


  break;
 }
 if (i == 12) {
  printf("Transfer timed out.\n");
  return;
 }
 if (rp->th_opcode == ERROR) {
  printf("Got ERROR, aborted\n");
  return;
 }





 if (rp->th_opcode == OACK) {
  if (!options_rfc_enabled) {
   printf("Got OACK while options are not enabled!\n");
   send_error(peer, EBADOP);
   return;
  }

  parse_options(peer, rp->th_stuff, n + 2);
 }

 if (read_init(fd, ((void*)0), mode) < 0) {
  warn("read_init()");
  return;
 }

 block = 1;
 tftp_send(peer, &block, &tftp_stats);

 read_close();
 if (tftp_stats.amount > 0)
  printstats("Sent", verbose, &tftp_stats);

 txrx_error = 1;
}
