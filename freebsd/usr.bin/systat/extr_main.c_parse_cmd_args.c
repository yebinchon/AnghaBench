
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdentry {int * argv; int * cmd; } ;


 int SLIST_INSERT_HEAD (int *,struct cmdentry*,int ) ;
 scalar_t__ UINT_MAX ;
 struct cmdentry* calloc (int,int) ;
 int commands ;
 unsigned int delay ;
 int errx (int,char*) ;
 int link ;
 scalar_t__ memcmp (char*,char*,int) ;
 void* strdup (char*) ;
 double strtod (char*,int *) ;

__attribute__((used)) static void
parse_cmd_args (int argc, char **argv)
{
 int in_command = 0;
 struct cmdentry *cmd = ((void*)0);
 double t;

 while (argc) {
  if (argv[0][0] == '-') {
   if (in_command)
     SLIST_INSERT_HEAD(&commands, cmd, link);

   if (memcmp(argv[0], "--", 3) == 0) {
    in_command = 0;
    argc --, argv ++;
    continue;
   }
   cmd = calloc(1, sizeof(struct cmdentry));
   if (cmd == ((void*)0))
    errx(1, "memory allocating failure");
   cmd->cmd = strdup(&argv[0][1]);
   if (cmd->cmd == ((void*)0))
    errx(1, "memory allocating failure");
   in_command = 1;
  }
  else if (!in_command) {
   t = strtod(argv[0], ((void*)0)) * 1000000.0;
   if (t > 0 && t < (double)UINT_MAX)
    delay = (unsigned int)t;
  }
  else if (cmd != ((void*)0)) {
   cmd->argv = strdup(argv[0]);
   if (cmd->argv == ((void*)0))
    errx(1, "memory allocating failure");
   in_command = 0;
   SLIST_INSERT_HEAD(&commands, cmd, link);
  }
  else
   errx(1, "invalid arguments list");

  argc--, argv++;
 }
 if (in_command && cmd != ((void*)0))
  SLIST_INSERT_HEAD(&commands, cmd, link);

}
