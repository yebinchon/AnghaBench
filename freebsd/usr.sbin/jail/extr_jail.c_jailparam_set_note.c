
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jailparam {char* jp_name; int * jp_value; } ;
struct cfjail {int dummy; } ;


 int JAIL_CREATE ;
 int JAIL_DYING ;
 int JAIL_UPDATE ;
 int err (int,char*) ;
 int errno ;
 int free (char*) ;
 int jail_note (struct cfjail const*,char*,char*,char*) ;
 char* jailparam_export (struct jailparam*) ;
 int jailparam_set (struct jailparam*,unsigned int,int) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int quoted_print (int ,char*) ;
 int stdout ;
 char* strerror (int ) ;
 scalar_t__ verbose ;

__attribute__((used)) static int
jailparam_set_note(const struct cfjail *j, struct jailparam *jp, unsigned njp,
    int flags)
{
 char *value;
 int jid;
 unsigned i;

 jid = jailparam_set(jp, njp, flags);
 if (verbose > 0) {
  jail_note(j, "jail_set(%s%s)",
      (flags & (JAIL_CREATE | JAIL_UPDATE)) == JAIL_CREATE
      ? "JAIL_CREATE" : "JAIL_UPDATE",
      (flags & JAIL_DYING) ? " | JAIL_DYING" : "");
  for (i = 0; i < njp; i++) {
   printf(" %s", jp[i].jp_name);
   if (jp[i].jp_value == ((void*)0))
    continue;
   putchar('=');
   value = jailparam_export(jp + i);
   if (value == ((void*)0))
    err(1, "jailparam_export");
   quoted_print(stdout, value);
   free(value);
  }
  if (jid < 0)
   printf(": %s", strerror(errno));
  printf("\n");
 }
 return jid;
}
