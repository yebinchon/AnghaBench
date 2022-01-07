
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int kvm_t ;
struct TYPE_2__ {int n_value; } ;





 size_t N_L2CAP_RAW_RT ;
 size_t N_L2CAP_RT ;


 int err (int,char*) ;
 int getgid () ;
 int getopt (int,char**,char*) ;
 int hcirawpr (int *,int ) ;
 int * kopen (char*) ;
 int kvm_close (int *) ;
 int l2cappr (int *,int ) ;
 int l2caprawpr (int *,int ) ;
 int l2caprtpr (int *,int ) ;
 TYPE_1__* nl ;
 int numeric_bdaddr ;
 char* optarg ;
 int rfcommpr (int *,int ) ;
 int rfcommpr_s (int *,int ) ;
 scalar_t__ setgid (int ) ;
 int strcasecmp (char*,char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int opt, proto = -1, route = 0;
 kvm_t *kvmd = ((void*)0);
 char *memf = ((void*)0);

 while ((opt = getopt(argc, argv, "hnM:p:r")) != -1) {
  switch (opt) {
  case 'n':
   numeric_bdaddr = 1;
   break;

  case 'M':
   memf = optarg;
   break;

  case 'p':
   if (strcasecmp(optarg, "hci_raw") == 0)
    proto = 132;
   else if (strcasecmp(optarg, "l2cap_raw") == 0)
    proto = 130;
   else if (strcasecmp(optarg, "l2cap") == 0)
    proto = 131;
   else if (strcasecmp(optarg, "rfcomm") == 0)
    proto = 129;
   else if (strcasecmp(optarg, "rfcomm_s") == 0)
    proto = 128;
   else
    usage();

   break;

  case 'r':
   route = 1;
   break;

  case 'h':
  default:
   usage();

  }
 }

 if ((proto == 132 || proto == 129 || proto == 128) && route)
  usage();






 if (memf != ((void*)0))
  if (setgid(getgid()) != 0)
   err(1, "setgid");

 kvmd = kopen(memf);
 if (kvmd == ((void*)0))
  return (1);

 switch (proto) {
 case 132:
  hcirawpr(kvmd, nl[132].n_value);
  break;

 case 130:
  if (route)
   l2caprtpr(kvmd, nl[N_L2CAP_RAW_RT].n_value);
  else
   l2caprawpr(kvmd, nl[130].n_value);
  break;

 case 131:
  if (route)
   l2caprtpr(kvmd, nl[N_L2CAP_RT].n_value);
  else
   l2cappr(kvmd, nl[131].n_value);
  break;

 case 129:
  rfcommpr(kvmd, nl[129].n_value);
  break;

 case 128:
  rfcommpr_s(kvmd, nl[128].n_value);
  break;

 default:
  if (route) {
   l2caprtpr(kvmd, nl[N_L2CAP_RAW_RT].n_value);
   l2caprtpr(kvmd, nl[N_L2CAP_RT].n_value);
  } else {
   hcirawpr(kvmd, nl[132].n_value);
   l2caprawpr(kvmd, nl[130].n_value);
   l2cappr(kvmd, nl[131].n_value);
   rfcommpr_s(kvmd, nl[128].n_value);
   rfcommpr(kvmd, nl[129].n_value);
  }
  break;
 }

 return (kvm_close(kvmd));
}
