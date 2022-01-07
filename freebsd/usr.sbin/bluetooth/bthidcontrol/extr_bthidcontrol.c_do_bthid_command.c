
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bthid_command {int (* handler ) (int ,int,char**) ;char* command; char* description; } ;
typedef int bdaddr_p ;






 int assert (int ) ;
 int errno ;
 struct bthid_command* find_bthid_command (char*,int ) ;
 int fprintf (int ,char*,...) ;
 int hid_commands ;
 int print_bthid_command (int ) ;
 int sdp_commands ;
 int stdout ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strerror (int ) ;
 int stub1 (int ,int,char**) ;

__attribute__((used)) static int
do_bthid_command(bdaddr_p bdaddr, int argc, char **argv)
{
 char *cmd = argv[0];
 struct bthid_command *c = ((void*)0);
 int e, help;

 help = 0;
 if (strcasecmp(cmd, "help") == 0) {
  argc --;
  argv ++;

  if (argc <= 0) {
   fprintf(stdout, "Supported commands:\n");
   print_bthid_command(sdp_commands);
   print_bthid_command(hid_commands);
   fprintf(stdout, "\nFor more information use " "'help command'\n");


   return (129);
  }

  help = 1;
  cmd = argv[0];
 }

 c = find_bthid_command(cmd, sdp_commands);
 if (c == ((void*)0))
  c = find_bthid_command(cmd, hid_commands);

 if (c == ((void*)0)) {
  fprintf(stdout, "Unknown command: \"%s\"\n", cmd);
  return (131);
 }

 if (!help)
  e = (c->handler)(bdaddr, -- argc, ++ argv);
 else
  e = 128;

 switch (e) {
 case 129:
 case 130:
  break;

 case 131:
  fprintf(stdout, "Could not execute command \"%s\". %s\n",
    cmd, strerror(errno));
  break;

 case 128:
  fprintf(stdout, "Usage: %s\n%s\n", c->command, c->description);
  break;

 default: assert(0); break;
 }

 return (e);
}
