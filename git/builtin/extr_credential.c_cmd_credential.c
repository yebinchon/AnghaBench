
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {int dummy; } ;


 struct credential CREDENTIAL_INIT ;
 int credential_approve (struct credential*) ;
 int credential_fill (struct credential*) ;
 scalar_t__ credential_read (struct credential*,int ) ;
 int credential_reject (struct credential*) ;
 int credential_write (struct credential*,int ) ;
 int die (char*) ;
 int stdin ;
 int stdout ;
 int strcmp (char const*,char*) ;
 int usage (int ) ;
 int usage_msg ;

int cmd_credential(int argc, const char **argv, const char *prefix)
{
 const char *op;
 struct credential c = CREDENTIAL_INIT;

 if (argc != 2 || !strcmp(argv[1], "-h"))
  usage(usage_msg);
 op = argv[1];

 if (credential_read(&c, stdin) < 0)
  die("unable to read credential from stdin");

 if (!strcmp(op, "fill")) {
  credential_fill(&c);
  credential_write(&c, stdout);
 } else if (!strcmp(op, "approve")) {
  credential_approve(&c);
 } else if (!strcmp(op, "reject")) {
  credential_reject(&c);
 } else {
  usage(usage_msg);
 }
 return 0;
}
