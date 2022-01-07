
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_command {int (* handler ) (int,int,char**) ;char* command; char* description; } ;






 int assert (int ) ;
 int close (int) ;
 int errno ;
 struct hci_command* find_hci_command (char*,int ) ;
 int fprintf (int ,char*,...) ;
 int host_controller_baseband_commands ;
 int info_commands ;
 int le_commands ;
 int link_control_commands ;
 int link_policy_commands ;
 int node_commands ;
 int print_hci_command (int ) ;
 int socket_open (char const*) ;
 int status_commands ;
 int stdout ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strerror (int ) ;
 int stub1 (int,int,char**) ;

__attribute__((used)) static int
do_hci_command(char const *node, int argc, char **argv)
{
 char *cmd = argv[0];
 struct hci_command *c = ((void*)0);
 int s, e, help;

 help = 0;
 if (strcasecmp(cmd, "help") == 0) {
  argc --;
  argv ++;

  if (argc <= 0) {
   fprintf(stdout, "Supported commands:\n");
   print_hci_command(link_control_commands);
   print_hci_command(link_policy_commands);
   print_hci_command(host_controller_baseband_commands);
   print_hci_command(info_commands);
   print_hci_command(status_commands);
   print_hci_command(le_commands);
   print_hci_command(node_commands);
   fprintf(stdout, "\nFor more information use " "'help command'\n");


   return (129);
  }

  help = 1;
  cmd = argv[0];
 }

 c = find_hci_command(cmd, link_control_commands);
 if (c != ((void*)0))
  goto execute;

 c = find_hci_command(cmd, link_policy_commands);
 if (c != ((void*)0))
  goto execute;

 c = find_hci_command(cmd, host_controller_baseband_commands);
 if (c != ((void*)0))
  goto execute;

 c = find_hci_command(cmd, info_commands);
 if (c != ((void*)0))
  goto execute;

 c = find_hci_command(cmd, status_commands);
 if (c != ((void*)0))
  goto execute;

 c = find_hci_command(cmd, le_commands);
 if (c != ((void*)0))
  goto execute;


 c = find_hci_command(cmd, node_commands);
 if (c == ((void*)0)) {
  fprintf(stdout, "Unknown command: \"%s\"\n", cmd);
  return (131);
 }
execute:
 if (!help) {
  s = socket_open(node);
  e = (c->handler)(s, -- argc, ++ argv);
  close(s);
 } else
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
