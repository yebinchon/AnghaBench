
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfjail {char* name; int * intparams; } ;


 size_t KP_JID ;
 size_t KP_NAME ;
 char* string_param (int ) ;
 int warnx (char*,char const*,...) ;

__attribute__((used)) static void
jail_quoted_warnx(const struct cfjail *j, const char *name_msg,
    const char *noname_msg)
{
 const char *pval;

 if ((pval = j->name) || (pval = string_param(j->intparams[KP_JID])) ||
     (pval = string_param(j->intparams[KP_NAME])))
  warnx("\"%s\" %s", pval, name_msg);
 else
  warnx("%s", noname_msg);
}
