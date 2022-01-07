
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct snmp_toolinfo {int dummy; } ;
typedef int int32_t ;


 int SET_MAXREP (struct snmp_toolinfo*,scalar_t__) ;
 scalar_t__ SNMP_MAX_BINDINGS ;
 int assert (int ) ;
 scalar_t__ strtoul (char*,void*,int) ;
 int warnx (char*,scalar_t__) ;

__attribute__((used)) static int32_t
parse_max_repetitions(struct snmp_toolinfo *snmptoolctx, char *opt_arg)
{
 uint32_t v;

 assert(opt_arg != ((void*)0));

 v = strtoul(opt_arg, (void *) ((void*)0), 10);

 if (v > SNMP_MAX_BINDINGS) {
  warnx("Max repetitions value greater than %d maximum allowed.",
      SNMP_MAX_BINDINGS);
  return (-1);
 }

 SET_MAXREP(snmptoolctx, v);
 return (2);
}
