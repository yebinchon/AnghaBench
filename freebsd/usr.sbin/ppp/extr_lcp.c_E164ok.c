
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback {int msg; } ;


 int memcmp (char*,char*,int) ;
 int strcmp (int ,char*) ;
 int strlen (char*) ;
 int strncpy (char*,int ,int) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int
E164ok(struct callback *cb, char *req, int sz)
{
  char list[sizeof cb->msg], *next;
  int len;

  if (!strcmp(cb->msg, "*"))
    return 1;

  strncpy(list, cb->msg, sizeof list - 1);
  list[sizeof list - 1] = '\0';
  for (next = strtok(list, ","); next; next = strtok(((void*)0), ",")) {
    len = strlen(next);
    if (sz == len && !memcmp(list, req, sz))
      return 1;
  }
  return 0;
}
