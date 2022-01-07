
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* o_request; } ;


 size_t OPT_ROLLOVER ;
 int free (char*) ;
 TYPE_1__* options ;
 int printf (char*,...) ;
 scalar_t__ strcasecmp (char*,char*) ;
 void* strdup (char*) ;

__attribute__((used)) static void
setrollover(int argc, char *argv[])
{

 if (argc == 2) {
  if (strcasecmp(argv[1], "never") == 0 ||
      strcasecmp(argv[1], "none") == 0) {
   free(options[OPT_ROLLOVER].o_request);
   options[OPT_ROLLOVER].o_request = ((void*)0);
  }
  if (strcasecmp(argv[1], "1") == 0) {
   free(options[OPT_ROLLOVER].o_request);
   options[OPT_ROLLOVER].o_request = strdup("1");
  }
  if (strcasecmp(argv[1], "0") == 0) {
   free(options[OPT_ROLLOVER].o_request);
   options[OPT_ROLLOVER].o_request = strdup("0");
  }
 }
 printf("Support for the rollover options is %s.\n",
     options[OPT_ROLLOVER].o_request != ((void*)0) ? "enabled" : "disabled");
 if (options[OPT_ROLLOVER].o_request != ((void*)0))
  printf("Block rollover will be to block %s.\n",
      options[OPT_ROLLOVER].o_request);


 printf("\nThe following rollover options are available:\n"
     "\trollover 0	: rollover to block zero (default)\n"
     "\trollover 1	: rollover to block one\n"
     "\trollover never	: do not support the rollover option\n"
     "\trollover none	: do not support the rollover option\n"
 );
}
