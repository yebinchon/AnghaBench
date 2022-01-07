
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {char* fname; int mtu; int rx; int tx; int tap; int prga_len; void* state; int mac; int ap; int seq; } ;
typedef int p ;


 void* S_START ;
 int err (int,char*) ;
 int exit (int) ;
 int get_more_prga (struct params*) ;
 int get_prga (struct params*) ;
 int getopt (int,char**,char*) ;
 int getpid () ;
 int load_prga (struct params*) ;
 int memcpy (int ,char*,int) ;
 int memset (struct params*,int ,int) ;
 int open_rx (char*) ;
 int open_tap (char*) ;
 int open_tx (char*) ;
 char* optarg ;
 int printf (char*) ;
 int set_iface_mac (char*,int ) ;
 int str2mac (int ,char*) ;
 int transmit (struct params*) ;
 int usage (char*) ;

int main(int argc, char *argv[])
{
 struct params p;
 char *iface = "wlan0";
 char *tap = "tap0";
 int ch;

 memset(&p, 0, sizeof(p));
 p.fname = "prga.log";
 memcpy(p.mac, "\x00\x00\xde\xfa\xce\x0d", 6);
 p.state = S_START;
 p.mtu = 1500;
 p.seq = getpid();

 while ((ch = getopt(argc, argv, "hb:t:")) != -1) {
  switch (ch) {
  case 'b':
   if (str2mac(p.ap, optarg) == -1) {
    printf("Can't parse BSSID\n");
    exit(1);
   }
   break;

  case 't':
   tap = optarg;
   break;

  case 'h':
  default:
   usage(argv[0]);
   break;
  }
 }


 if ((p.rx = open_rx(iface)) == -1)
  err(1, "open_rx()");
 if ((p.tx = open_tx(iface)) == -1)
  err(1, "open_tx()");

 if ((p.tap = open_tap(tap)) == -1)
  err(1, "open_tap()");
 if (set_iface_mac(tap, p.mac) == -1)
  err(1, "set_iface_mac()");

 printf("Obtaining PRGA\n");

 load_prga(&p);

 while (p.prga_len == 0)
  get_prga(&p);


 while (p.prga_len < p.mtu)
  get_more_prga(&p);


 p.state = S_START;
 while (1)
  transmit(&p);

 exit(0);
}
