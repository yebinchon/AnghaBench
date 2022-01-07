
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ isgroups ;
 scalar_t__ iswhoami ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 if (isgroups)
  (void)fprintf(stderr, "usage: groups [user]\n");
 else if (iswhoami)
  (void)fprintf(stderr, "usage: whoami\n");
 else
  (void)fprintf(stderr, "%s\n%s%s\n%s\n%s\n%s\n%s\n%s\n%s\n",
      "usage: id [user]",



      "",

      "       id -G [-n] [user]",
      "       id -M",
      "       id -P [user]",
      "       id -c",
      "       id -g [-nr] [user]",
      "       id -p [user]",
      "       id -u [-nr] [user]");
 exit(1);
}
