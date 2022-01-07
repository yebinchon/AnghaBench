
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 (void) fprintf(stderr, "%s\n%s\n%s\n%s\n%s\n%s\n",
  "usage: [id|rt]prio",
  "       [id|rt]prio [-]pid",
  "       [id|rt]prio priority command [args]",
  "       [id|rt]prio priority -pid",
  "       [id|rt]prio -t command [args]",
  "       [id|rt]prio -t -pid");
 exit(1);
}
