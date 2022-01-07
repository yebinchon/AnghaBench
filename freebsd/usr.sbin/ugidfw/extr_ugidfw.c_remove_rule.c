
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZ ;
 int bsde_delete_rule (int,int,char*) ;
 long strtol (char*,char**,int) ;
 int usage () ;
 int warnx (char*,char*) ;

void
remove_rule(int argc, char *argv[])
{
 char errstr[BUFSIZ];
 long value;
 int error, rulenum;
 char *endp;

 if (argc != 1)
  usage();

 value = strtol(argv[0], &endp, 10);
 if (*endp != '\0')
  usage();

 if ((long) value != (int) value || value < 0)
  usage();

 rulenum = value;

 error = bsde_delete_rule(rulenum, BUFSIZ, errstr);
 if (error)
  warnx("%s", errstr);
}
