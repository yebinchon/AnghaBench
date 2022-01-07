
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {char* xbe_name; int xbe_version; } ;
typedef TYPE_1__ ximgact_binmisc_entry_t ;
typedef int xbe_out ;
typedef int xbe_in ;
typedef size_t uint32_t ;
struct TYPE_12__ {int (* func ) (int,char**,TYPE_1__*) ;char* name; } ;


 int CMD_LIST ;
 int CMD_LOOKUP ;



 int ENOMEM ;


 int IBE_MAX_ENTRIES ;
 int IBE_VERSION ;
 int KMOD_NAME ;
 int bzero (TYPE_1__*,int) ;
 int * cmd_sysctl_name ;
 TYPE_10__* cmds ;
 int demux_cmd (int,char**) ;
 int errno ;
 int fatal (char*,...) ;
 int free (TYPE_1__*) ;
 int kldload (int ) ;
 TYPE_1__* malloc (size_t) ;
 int modfind (int ) ;
 int printxbe (TYPE_1__*) ;
 TYPE_1__* realloc (TYPE_1__*,size_t) ;
 int strerror (int) ;
 int stub1 (int,char**,TYPE_1__*) ;
 int sysctlbyname (int ,TYPE_1__*,size_t*,TYPE_1__*,size_t) ;
 int usage (char*,...) ;

int
main(int argc, char **argv)
{
 int error = 0, cmd = -1;
 ximgact_binmisc_entry_t xbe_in, *xbe_inp = ((void*)0);
 ximgact_binmisc_entry_t xbe_out, *xbe_outp = ((void*)0);
 size_t xbe_in_sz = 0;
 size_t xbe_out_sz = 0, *xbe_out_szp = ((void*)0);
 uint32_t i;

 if (modfind(KMOD_NAME) == -1) {
  if (kldload(KMOD_NAME) == -1)
   fatal("Can't load %s kernel module: %s",
       KMOD_NAME, strerror(errno));
 }

 bzero(&xbe_in, sizeof(xbe_in));
 bzero(&xbe_out, sizeof(xbe_out));
 xbe_in.xbe_version = IBE_VERSION;

 if (argc < 2)
  usage("Error: requires at least one argument");

 argc--, argv++;
 cmd = demux_cmd(argc, argv);
 if (cmd < 0)
  usage("Error: Unknown command \"%s\"", argv[0]);
 argc--, argv++;

 error = (*cmds[cmd].func)(argc, argv, &xbe_in);
 if (error)
  usage("Can't parse command-line for '%s' command",
      cmds[cmd].name);

 if (cmd != CMD_LIST) {
  xbe_inp = &xbe_in;
  xbe_in_sz = sizeof(xbe_in);
 } else
  xbe_out_szp = &xbe_out_sz;
 if (cmd == CMD_LOOKUP) {
  xbe_out_sz = sizeof(xbe_out);
  xbe_outp = &xbe_out;
  xbe_out_szp = &xbe_out_sz;
 }

 error = sysctlbyname(cmd_sysctl_name[cmd], xbe_outp, xbe_out_szp,
     xbe_inp, xbe_in_sz);

 if (error)
  switch(errno) {
  case 131:
   usage("Invalid interpreter name or --interpreter, "
       "--magic, --mask, or --size argument value");
   break;

  case 132:
   usage("'%s' is not unique in activator list",
       xbe_in.xbe_name);
   break;

  case 130:
   usage("'%s' is not found in activator list",
       xbe_in.xbe_name);
   break;

  case 129:
   fatal("Fatal: no more room in the activator list "
       "(limited to %d enties)", IBE_MAX_ENTRIES);
   break;

  case 128:
   usage("Insufficient privileges for '%s' command",
       cmds[cmd].name);
   break;

  default:
   fatal("Fatal: sysctlbyname() returned: %s",
       strerror(errno));
   break;
  }


 if (cmd == CMD_LOOKUP)
  printxbe(xbe_outp);

 if (cmd == CMD_LIST && xbe_out_sz > 0) {
  xbe_outp = malloc(xbe_out_sz);
  if (!xbe_outp)
   fatal("Fatal: out of memory");
  while(1) {
   size_t osize = xbe_out_sz;
   error = sysctlbyname(cmd_sysctl_name[cmd], xbe_outp,
       &xbe_out_sz, ((void*)0), 0);

   if (error == -1 && errno == ENOMEM &&
       xbe_out_sz == osize) {




    xbe_out_sz += sizeof(xbe_out);
    xbe_outp = realloc(xbe_outp, xbe_out_sz);
    if (!xbe_outp)
     fatal("Fatal: out of memory");
   } else
    break;
  }
  if (error) {
   free(xbe_outp);
   fatal("Fatal: %s", strerror(errno));
  }
  for(i = 0; i < (xbe_out_sz / sizeof(xbe_out)); i++)
   printxbe(&xbe_outp[i]);
 }

 return (error);
}
