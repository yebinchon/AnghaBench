
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACT_ENABLE_WEP ;




 int ACT_SET_BEACON_PERIOD ;
 int ACT_SET_DIVERSITY_RX ;
 int ACT_SET_DIVERSITY_TX ;
 int ACT_SET_FRAG_THRESH ;
 int ACT_SET_FREQ ;

 int ACT_SET_KEY_TYPE ;

 int ACT_SET_MAC ;
 int ACT_SET_MONITOR_MODE ;
 int ACT_SET_MYNAME ;
 int ACT_SET_NETJOIN ;
 int ACT_SET_OPMODE ;
 int ACT_SET_PWRSAVE ;
 int ACT_SET_RTS_RETRYLIM ;
 int ACT_SET_RTS_THRESH ;

 int ACT_SET_TXPWR ;

 int ACT_SET_WAKE_DURATION ;

 int an_dumpap (char const*) ;
 int an_dumpcaps (char const*) ;
 int an_dumpconfig (char const*) ;
 int an_dumprssimap (char const*) ;
 int an_dumpssid (char const*) ;
 int an_dumpstats (char const*) ;
 int an_dumpstatus (char const*) ;
 int an_enable_leap_mode (char const*,void*) ;
 int an_enable_tx_key (char const*,void*) ;
 int an_readcache (char const*) ;
 int an_setap (char const*,int,void*) ;
 int an_setconfig (char const*,int,void*) ;
 int an_setkeys (char const*,char*,int) ;
 int an_setspeed (char const*,int,void*) ;
 int an_setssid (char const*,int,void*) ;
 int an_zerocache (char const*) ;
 int atoi (char*) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int isdigit (char) ;
 char* optarg ;
 int opterr ;
 int optind ;
 int optreset ;
 int usage (char*) ;

int
main(int argc, char *argv[])
{
 int ch;
 int act = 0;
 const char *iface = ((void*)0);
 int modifier = 0;
 char *key = ((void*)0);
 void *arg = ((void*)0);
 char *p = argv[0];


 opterr = 0;
 ch = getopt(argc, argv, "i:");
 if (ch == 'i') {
  iface = optarg;
 } else {
  if (argc > 1 && *argv[1] != '-') {
   iface = argv[1];
   optind = 2;
  } else {
   iface = "an0";
   optind = 1;
  }
  optreset = 1;
 }
 opterr = 1;

 while ((ch = getopt(argc, argv,
     "ANISCTRht:a:e:o:s:n:v:d:j:b:c:f:r:p:w:m:l:k:K:W:QZM:L:")) != -1) {
  switch(ch) {
  case 'Z':



   errx(1, "ANCACHE not available");

   break;
  case 'Q':



   errx(1, "ANCACHE not available");

   break;
  case 'A':
   act = 145;
   break;
  case 'N':
   act = 140;
   break;
  case 'S':
   act = 138;
   break;
  case 'I':
   act = 143;
   break;
  case 'T':
   act = 139;
   break;
  case 'C':
   act = 142;
   break;
  case 'R':
   act = 141;
   break;
  case 't':
   act = 129;
   arg = optarg;
   break;
  case 's':
   act = ACT_SET_PWRSAVE;
   arg = optarg;
   break;
  case 'p':
   act = ACT_SET_TXPWR;
   arg = optarg;
   break;
  case 'v':
   modifier = atoi(optarg);
   break;
  case 'a':
   switch(modifier) {
   case 0:
   case 1:
    act = 136;
    break;
   case 2:
    act = 135;
    break;
   case 3:
    act = 134;
    break;
   case 4:
    act = 133;
    break;
   default:
    errx(1, "bad modifier %d: there "
        "are only 4 access point settings",
        modifier);
    usage(p);
    break;
   }
   arg = optarg;
   break;
  case 'b':
   act = ACT_SET_BEACON_PERIOD;
   arg = optarg;
   break;
  case 'd':
   switch(modifier) {
   case 0:
    act = ACT_SET_DIVERSITY_RX;
    break;
   case 1:
    act = ACT_SET_DIVERSITY_TX;
    break;
   default:
    errx(1, "must specify RX or TX diversity");
    break;
   }
   if (!isdigit(*optarg)) {
    errx(1, "%s is not numeric", optarg);
    exit(1);
   }
   arg = optarg;
   break;
  case 'j':
   act = ACT_SET_NETJOIN;
   arg = optarg;
   break;
  case 'l':
   act = ACT_SET_MYNAME;
   arg = optarg;
   break;
  case 'm':
   act = ACT_SET_MAC;
   arg = optarg;
   break;
  case 'n':
   if (modifier == 0)
    modifier = 1;
   act = 130;
   arg = optarg;
   break;
  case 'o':
   act = ACT_SET_OPMODE;
   arg = optarg;
   break;
  case 'c':
   act = ACT_SET_FREQ;
   arg = optarg;
   break;
  case 'f':
   act = ACT_SET_FRAG_THRESH;
   arg = optarg;
   break;
  case 'W':
   act = ACT_ENABLE_WEP;
   arg = optarg;
   break;
  case 'K':
   act = ACT_SET_KEY_TYPE;
   arg = optarg;
   break;
  case 'k':
   act = 132;
   key = optarg;
   break;
  case 'e':
   act = 137;
   arg = optarg;
   break;
  case 'q':
   act = ACT_SET_RTS_RETRYLIM;
   arg = optarg;
   break;
  case 'r':
   act = ACT_SET_RTS_THRESH;
   arg = optarg;
   break;
  case 'w':
   act = ACT_SET_WAKE_DURATION;
   arg = optarg;
   break;
  case 'M':
   act = ACT_SET_MONITOR_MODE;
   arg = optarg;
   break;
  case 'L':
   act = 131;
   arg = optarg;
   break;
  case 'h':
  default:
   usage(p);
  }
 }

 if (iface == ((void*)0) || (!act && !key))
  usage(p);

 switch(act) {
 case 138:
  an_dumpstatus(iface);
  break;
 case 143:
  an_dumpcaps(iface);
  break;
 case 139:
  an_dumpstats(iface);
  break;
 case 142:
  an_dumpconfig(iface);
  break;
 case 140:
  an_dumpssid(iface);
  break;
 case 145:
  an_dumpap(iface);
  break;
 case 141:
  an_dumprssimap(iface);
  break;
 case 130:
  an_setssid(iface, modifier, arg);
  break;
 case 136:
 case 135:
 case 134:
 case 133:
  an_setap(iface, act, arg);
  break;
 case 129:
  an_setspeed(iface, act, arg);
  break;
 case 132:
  an_setkeys(iface, key, modifier);
  break;
 case 137:
  an_enable_tx_key(iface, arg);
  break;
 case 131:
  an_enable_leap_mode(iface, arg);
  break;
 default:
  an_setconfig(iface, act, arg);
  break;
 }

 exit(0);
}
