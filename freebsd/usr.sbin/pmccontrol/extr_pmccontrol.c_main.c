
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcc_op {int op_cpu; int op_pmc; int op_op; } ;


 int EX_DATAERR ;
 int EX_OSERR ;
 int EX_SOFTWARE ;
 int EX_UNAVAILABLE ;
 int EX_USAGE ;
 int PMCC_CPU_ALL ;
 int PMCC_CPU_WILDCARD ;


 int PMCC_OP_DISABLE ;
 int PMCC_OP_ENABLE ;
 int PMCC_PMC_ALL ;
 int PMCC_PMC_WILDCARD ;

 int PMCC_PRINT_USAGE ;

 int STAILQ_EMPTY (int *) ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct pmcc_op*,int ) ;
 int assert (int ) ;
 int err (int ,char*) ;
 int errx (int ,char*,...) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int head ;
 struct pmcc_op* malloc (int) ;
 int op_next ;
 int * optarg ;
 int optopt ;
 scalar_t__ pmc_init () ;
 int pmcc_do_enable_disable (int *) ;
 int pmcc_do_list_events () ;
 int pmcc_do_list_state () ;
 int pmcc_init_debug () ;
 int pmcc_show_statistics () ;
 int strtoul (int *,char**,int ) ;
 int usage_message ;
 int warnx (char*,int ) ;

int
main(int argc, char **argv)
{
 int error, command, currentcpu, option, pmc;
 char *dummy;
 struct pmcc_op *p;







 currentcpu = PMCC_CPU_ALL;
 command = PMCC_PRINT_USAGE;
 error = 0;

 STAILQ_INIT(&head);

 while ((option = getopt(argc, argv, ":c:d:e:lLs")) != -1)
  switch (option) {
  case 'L':
   if (command != PMCC_PRINT_USAGE) {
    error = 1;
    break;
   }
   command = 129;
   break;

  case 'c':
   if (command != PMCC_PRINT_USAGE &&
       command != 131) {
    error = 1;
    break;
   }
   command = 131;

   if (*optarg == PMCC_CPU_WILDCARD)
    currentcpu = PMCC_CPU_ALL;
   else {
    currentcpu = strtoul(optarg, &dummy, 0);
    if (*dummy != '\0' || currentcpu < 0)
     errx(EX_DATAERR,
         "\"%s\" is not a valid CPU id",
         optarg);
   }
   break;

  case 'd':
  case 'e':
   if (command != PMCC_PRINT_USAGE &&
       command != 131) {
    error = 1;
    break;
   }
   command = 131;

   if (*optarg == PMCC_PMC_WILDCARD)
    pmc = PMCC_PMC_ALL;
   else {
    pmc = strtoul(optarg, &dummy, 0);
    if (*dummy != '\0' || pmc < 0)
     errx(EX_DATAERR,
         "\"%s\" is not a valid PMC id",
         optarg);
   }

   if ((p = malloc(sizeof(*p))) == ((void*)0))
    err(EX_SOFTWARE, "Out of memory");

   p->op_cpu = currentcpu;
   p->op_pmc = pmc;
   p->op_op = option == 'd' ? PMCC_OP_DISABLE :
       PMCC_OP_ENABLE;

   STAILQ_INSERT_TAIL(&head, p, op_next);
   break;

  case 'l':
   if (command != PMCC_PRINT_USAGE) {
    error = 1;
    break;
   }
   command = 130;
   break;

  case 's':
   if (command != PMCC_PRINT_USAGE) {
    error = 1;
    break;
   }
   command = 128;
   break;

  case ':':
   errx(EX_USAGE,
       "Missing argument to option '-%c'", optopt);
   break;

  case '?':
   warnx("Unrecognized option \"-%c\"", optopt);
   errx(EX_USAGE, "%s", usage_message);
   break;

  default:
   error = 1;
   break;

  }

 if (command == PMCC_PRINT_USAGE)
  (void) errx(EX_USAGE, "%s", usage_message);

 if (error)
  exit(EX_USAGE);

 if (pmc_init() < 0)
  err(EX_UNAVAILABLE,
      "Initialization of the pmc(3) library failed");

 switch (command) {
 case 130:
  error = pmcc_do_list_state();
  break;
 case 129:
  error = pmcc_do_list_events();
  break;
 case 128:
  error = pmcc_show_statistics();
  break;
 case 131:
  if (STAILQ_EMPTY(&head))
   errx(EX_USAGE,
       "No PMCs specified to enable or disable");
  error = pmcc_do_enable_disable(&head);
  break;
 default:
  assert(0);

 }

 if (error != 0)
  err(EX_OSERR, "Command failed");
 exit(0);
}
