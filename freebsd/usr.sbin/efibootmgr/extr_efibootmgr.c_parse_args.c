
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_inactive; int set_active; int has_bootnum; int delete; int copy; int create; int dry_run; int delete_bootnext; int set_bootnext; int once; int del_timeout; int set_timeout; int verbose; void* order; void* loader; void* timeout; void* label; void* kernel; void* env; void* cp_src; void* bootnum; } ;


 int ACTIVE_USAGE ;
 int BOOTNEXT_USAGE ;
 int CREATE_USAGE ;
 int DELETE_USAGE ;
 int ORDER_USAGE ;
 int USAGE ;
 int errx (int,char*,int ) ;
 int free (void*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int lopts ;
 void* mangle_loader (void*) ;
 int optarg ;
 TYPE_1__ opts ;
 void* strdup (int ) ;
 void* strtoul (int ,int *,int) ;

__attribute__((used)) static void
parse_args(int argc, char *argv[])
{
 int ch;

 while ((ch = getopt_long(argc, argv, "AaBb:C:cDe:hk:L:l:NnOo:Tt:v",
      lopts, ((void*)0))) != -1) {
  switch (ch) {
  case 'A':
   opts.set_inactive = 1;
   break;
  case 'a':
   opts.set_active = 1;
   break;
  case 'b':
   opts.has_bootnum = 1;
   opts.bootnum = strtoul(optarg, ((void*)0), 16);
   break;
  case 'B':
   opts.delete = 1;
   break;
  case 'C':
   opts.copy = 1;
   opts.cp_src = strtoul(optarg, ((void*)0), 16);
  case 'c':
   opts.create = 1;
   break;
  case 'D':
   opts.dry_run = 1;
   break;
  case 'e':
   free(opts.env);
   opts.env = strdup(optarg);
   break;
  case 'h':
  default:
   errx(1, "%s", USAGE);
   break;
  case 'k':
   free(opts.kernel);
   opts.kernel = strdup(optarg);
   break;
  case 'L':
   free(opts.label);
   opts.label = strdup(optarg);
   break;
  case 'l':
   free(opts.loader);
   opts.loader = strdup(optarg);
   opts.loader = mangle_loader(opts.loader);
   break;
  case 'N':
   opts.delete_bootnext = 1;
   break;
  case 'n':
   opts.set_bootnext = 1;
   break;
  case 'O':
   opts.once = 1;
   break;
  case 'o':
   free(opts.order);
   opts.order = strdup(optarg);
   break;
  case 'T':
   opts.del_timeout = 1;
   break;
  case 't':
   opts.set_timeout = 1;
   opts.timeout = strtoul(optarg, ((void*)0), 10);
   break;
  case 'v':
   opts.verbose = 1;
   break;
  }
 }
 if (opts.create) {
  if (!opts.loader)
   errx(1, "%s",CREATE_USAGE);
  return;
 }

 if (opts.order && !(opts.order))
  errx(1, "%s", ORDER_USAGE);

 if ((opts.set_inactive || opts.set_active) && !opts.has_bootnum)
  errx(1, "%s", ACTIVE_USAGE);

 if (opts.delete && !opts.has_bootnum)
  errx(1, "%s", DELETE_USAGE);

 if (opts.set_bootnext && !opts.has_bootnum)
  errx(1, "%s", BOOTNEXT_USAGE);
}
