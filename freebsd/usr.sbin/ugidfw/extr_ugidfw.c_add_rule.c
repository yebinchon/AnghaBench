
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_bsdextended_rule {int dummy; } ;


 int BUFSIZ ;
 int bsde_add_rule (int*,struct mac_bsdextended_rule*,int,char*) ;
 int bsde_parse_rule (int,char**,struct mac_bsdextended_rule*,int,char*) ;
 int bsde_rule_to_string (struct mac_bsdextended_rule*,char*,int) ;
 int printf (char*,int,char*) ;
 int warnx (char*,...) ;

void
add_rule(int argc, char *argv[])
{
 char errstr[BUFSIZ], charstr[BUFSIZ];
 struct mac_bsdextended_rule rule;
 int error, rulenum;

 error = bsde_parse_rule(argc, argv, &rule, BUFSIZ, errstr);
 if (error) {
  warnx("%s", errstr);
  return;
 }

 error = bsde_add_rule(&rulenum, &rule, BUFSIZ, errstr);
 if (error) {
  warnx("%s", errstr);
  return;
 }
 if (bsde_rule_to_string(&rule, charstr, BUFSIZ) == -1)
  warnx("Added rule, but unable to print string.");
 else
  printf("%d %s\n", rulenum, charstr);
}
