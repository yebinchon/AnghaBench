
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_bsdextended_rule {int dummy; } ;


 int BUFSIZ ;
 int bsde_parse_rule (int,char**,struct mac_bsdextended_rule*,int,char*) ;
 int bsde_set_rule (int,struct mac_bsdextended_rule*,int,char*) ;
 long strtol (char*,char**,int) ;
 int usage () ;
 int warnx (char*,char*) ;

void
set_rule(int argc, char *argv[])
{
 char errstr[BUFSIZ];
 struct mac_bsdextended_rule rule;
 long value;
 int error, rulenum;
 char *endp;

 if (argc < 1)
  usage();

 value = strtol(argv[0], &endp, 10);
 if (*endp != '\0')
  usage();

 if ((long) value != (int) value || value < 0)
  usage();

 rulenum = value;

 error = bsde_parse_rule(argc - 1, argv + 1, &rule, BUFSIZ, errstr);
 if (error) {
  warnx("%s", errstr);
  return;
 }

 error = bsde_set_rule(rulenum, &rule, BUFSIZ, errstr);
 if (error) {
  warnx("%s", errstr);
  return;
 }
}
