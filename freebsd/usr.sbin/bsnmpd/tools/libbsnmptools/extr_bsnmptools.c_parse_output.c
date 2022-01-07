
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
typedef int int32_t ;


 int OUTPUT_QUIET ;
 int OUTPUT_SHORT ;
 int OUTPUT_TABULAR ;
 int OUTPUT_VERBOSE ;
 int SET_OUTPUT (struct snmp_toolinfo*,int ) ;
 int assert (int ) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,scalar_t__) ;
 int warnx (char*,char*) ;

int32_t
parse_output(struct snmp_toolinfo *snmptoolctx, char *opt_arg)
{
 assert(opt_arg != ((void*)0));

 if (strlen(opt_arg) > strlen("verbose")) {
  warnx( "Invalid output option - %s",opt_arg);
  return (-1);
 }

 if (strncasecmp(opt_arg, "short", strlen(opt_arg)) == 0)
  SET_OUTPUT(snmptoolctx, OUTPUT_SHORT);
 else if (strncasecmp(opt_arg, "verbose", strlen(opt_arg)) == 0)
  SET_OUTPUT(snmptoolctx, OUTPUT_VERBOSE);
 else if (strncasecmp(opt_arg,"tabular", strlen(opt_arg)) == 0)
  SET_OUTPUT(snmptoolctx, OUTPUT_TABULAR);
 else if (strncasecmp(opt_arg, "quiet", strlen(opt_arg)) == 0)
  SET_OUTPUT(snmptoolctx, OUTPUT_QUIET);
 else {
  warnx( "Invalid output option - %s", opt_arg);
  return (-1);
 }

 return (2);
}
