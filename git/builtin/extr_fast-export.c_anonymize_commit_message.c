
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* xstrfmt (char*,int ) ;

__attribute__((used)) static char *anonymize_commit_message(const char *old)
{
 static int counter;
 return xstrfmt("subject %d\n\nbody\n", counter++);
}
