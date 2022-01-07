
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {char* fname; int prga_len; int rx; int tx; int tap; int state; int mac; int port; int dst; int ap; int rtr; int src; int seq; } ;
typedef int p ;


 int S_START ;
 int assert (int) ;
 int atoi (char*) ;
 int connect_buddy (struct params*) ;
 int err (int,char*) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int getpid () ;
 int inet_aton (char*,int *) ;
 int load_prga (struct params*) ;
 int memcpy (int ,char*,int) ;
 int memset (struct params*,int ,int) ;
 int open_rx (char*) ;
 int open_tap (char*) ;
 int open_tx (char*) ;
 char* optarg ;
 int own (struct params*) ;
 int printf (char*) ;
 int set_iface_mac (char*,int ) ;
 int str2mac (int ,char*) ;
 int usage (char*) ;

int main(int argc, char *argv[])
{
 struct params p;
 char *iface = "wlan0";
 char *tap = "tap0";
 int ch;

 memset(&p, 0, sizeof(p));
 memcpy(p.mac, "\x00\x00\xde\xfa\xce\xd", 6);
 p.fname = "prga.log";
 p.seq = getpid();

 while ((ch = getopt(argc, argv, "hd:p:b:t:r:s:")) != -1) {
  switch (ch) {
  case 's':
   if (!inet_aton(optarg, &p.src)) {
    printf("Can't parse src IP\n");
    exit(1);
   }
   break;

  case 'r':
   if (str2mac(p.rtr, optarg) == -1) {
    printf("Can't parse rtr MAC\n");
    exit(1);
   }
   break;

  case 't':
   tap = optarg;
   break;

  case 'b':
   if (str2mac(p.ap, optarg) == -1) {
    printf("Can't parse BSSID\n");
    exit(1);
   }
   break;

  case 'd':
   if (!inet_aton(optarg, &p.dst)) {
    printf("Can't parse IP\n");
    exit(1);
   }
   break;

  case 'p':
   p.port = atoi(optarg);
   break;

  case 'h':
  default:
   usage(argv[0]);
   break;
  }
 }

 load_prga(&p);
 assert(p.prga_len > 60);

 if ((p.rx = open_rx(iface)) == -1)
  err(1, "open_rx()");
 if ((p.tx = open_tx(iface)) == -1)
  err(1, "open_tx()");

 if ((p.tap = open_tap(tap)) == -1)
  err(1, "open_tap()");
 if (set_iface_mac(tap, p.mac) == -1)
  err(1, "set_iface_mac()");

 if (connect_buddy(&p) == -1)
  err(1, "connect_buddy()");

 p.state = S_START;
 while (1)
  own(&p);

 exit(0);
}
