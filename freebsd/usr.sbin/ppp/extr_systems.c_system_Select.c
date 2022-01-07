
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {int dummy; } ;
struct datalink {int dummy; } ;
struct bundle {int dummy; } ;


 int PHYS_ALL ;
 int ReadSystem (struct bundle*,char const*,char const*,struct prompt*,struct datalink*,int ) ;
 int SYSTEM_EXEC ;
 int modeok ;
 int modereq ;
 int userok ;

int
system_Select(struct bundle *bundle, const char *name, const char *file,
             struct prompt *prompt, struct datalink *cx)
{
  userok = modeok = 1;
  modereq = PHYS_ALL;
  return ReadSystem(bundle, name, file, prompt, cx, SYSTEM_EXEC);
}
