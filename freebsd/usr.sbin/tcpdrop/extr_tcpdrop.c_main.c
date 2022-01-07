
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stack ;


 int TCPS_CLOSED ;
 int TCPS_LISTEN ;
 int TCP_FUNCTION_NAME_LEN_MAX ;
 int TCP_NSTATES ;
 int exit (int) ;
 char* findport (char*) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 scalar_t__ optind ;
 int strcmp (int ,int ) ;
 int strlcpy (char*,int ,int) ;
 int tcpdrop_list_commands ;
 int tcpdropall (char*,int) ;
 int tcpdropbyname (char*,char*,char*,char*) ;
 int * tcpstates ;
 int usage () ;

int
main(int argc, char *argv[])
{
 char stack[TCP_FUNCTION_NAME_LEN_MAX];
 char *lport, *fport;
 bool dropall, dropallstack;
 int ch, state;

 dropall = 0;
 dropallstack = 0;
 stack[0] = '\0';
 state = -1;

 while ((ch = getopt(argc, argv, "alS:s:")) != -1) {
  switch (ch) {
  case 'a':
   dropall = 1;
   break;
  case 'l':
   tcpdrop_list_commands = 1;
   break;
  case 'S':
   dropallstack = 1;
   strlcpy(stack, optarg, sizeof(stack));
   break;
  case 's':
   dropallstack = 1;
   for (state = 0; state < TCP_NSTATES; state++) {
    if (strcmp(tcpstates[state], optarg) == 0)
     break;
   }
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (state == TCP_NSTATES ||
     state == TCPS_CLOSED ||
     state == TCPS_LISTEN)
  usage();
 if (dropall && dropallstack)
  usage();
 if (dropall || dropallstack) {
  if (argc != 0)
   usage();
  if (!tcpdropall(stack, state))
   exit(1);
  exit(0);
 }

 if ((argc != 2 && argc != 4) || tcpdrop_list_commands)
  usage();

 if (argc == 2) {
  lport = findport(argv[0]);
  fport = findport(argv[1]);
  if (lport == ((void*)0) || lport[1] == '\0' || fport == ((void*)0) ||
      fport[1] == '\0')
   usage();
  *lport++ = '\0';
  *fport++ = '\0';
  if (!tcpdropbyname(argv[0], lport, argv[1], fport))
   exit(1);
 } else if (!tcpdropbyname(argv[0], argv[1], argv[2], argv[3]))
  exit(1);

 exit(0);
}
