
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 int fprintf (int ,char*,...) ;
 int prstr (char*) ;
 int stderr ;
 scalar_t__ vflg ;

__attribute__((used)) static void
found(int new, off_t off, char *str)
{
 if (vflg == 0)
  return;
 if (!new)
  fprintf(stderr, "found at %d:", (int) off);
 else
  fprintf(stderr, "new at %d:", (int) off);
 prstr(str);
 fprintf(stderr, "\n");
}
