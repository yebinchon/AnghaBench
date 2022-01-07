
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int bint; int chan; int tx; int rx; int tap; int mac; int wep_len; int wep_key; int * ssid; int blast; int seq; } ;
typedef int p ;


 int atoi (char*) ;
 int err (int,char*) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int getpid () ;
 int gettimeofday (int *,int *) ;
 int memcpy (int ,char*,int) ;
 int memset (struct params*,int ,int) ;
 int next_event (struct params*) ;
 int open_rx (char*) ;
 int open_tap (char*) ;
 int open_tx (char*) ;
 char* optarg ;
 int printf (char*) ;
 int set_iface_mac (char*,int ) ;
 int str2mac (int ,char*) ;
 int str2wep (int ,int *,char*) ;
 int strcpy (int *,char*) ;
 int strncpy (int *,char*,int) ;
 int usage (char*) ;

int main(int argc, char *argv[])
{
 char *iface = "wlan0";
 char *tap = "tap0";
 struct params p;
 int ch;


 memset(&p, 0, sizeof(p));
 memcpy(p.mac, "\x00\x00\xde\xfa\xce\x0d", 6);
 strcpy(p.ssid, "sorbo");
 p.bint = 500*1000;
 p.seq = getpid();
 if (gettimeofday(&p.blast, ((void*)0)) == -1)
  err(1, "gettimeofday()");
 p.chan = 3;

 while ((ch = getopt(argc, argv, "hi:s:m:w:c:t:")) != -1) {
  switch (ch) {
  case 'i':
   iface = optarg;
   break;
  case 't':
   tap = optarg;
   break;

  case 'c':
   p.chan = atoi(optarg);
   break;

  case 's':
   strncpy(p.ssid, optarg, sizeof(p.ssid)-1);
   p.ssid[sizeof(p.ssid)-1] = 0;
   break;

  case 'm':
   str2mac(p.mac, optarg);
   break;

  case 'w':
   if (str2wep(p.wep_key, &p.wep_len, optarg)) {
    printf("Error parsing WEP key\n");
    exit(1);
   }
   break;

  case 'h':
  default:
   usage(argv[0]);
   break;
  }
 }


 if ((p.tx = open_tx(iface)) == -1)
  err(1, "open_tx()");
 if ((p.rx = open_rx(iface)) == -1)
  err(1, "open_rx()");

 if ((p.tap = open_tap(tap)) == -1)
  err(1, "open_tap()");
 if (set_iface_mac(tap, p.mac) == -1)
  err(1, "set_iface_mac()");

 while (1) {
  next_event(&p);
 }

 exit(0);
}
