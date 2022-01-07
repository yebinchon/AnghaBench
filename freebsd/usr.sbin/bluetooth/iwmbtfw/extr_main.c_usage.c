
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
     "Usage: iwmbtfw (-D) -d ugenX.Y (-f firmware path) (-I)\n");
 fprintf(stderr, "    -D: enable debugging\n");
 fprintf(stderr, "    -d: device to operate upon\n");
 fprintf(stderr, "    -f: firmware path, if not default\n");
 fprintf(stderr, "    -I: enable informational output\n");
 exit(127);
}
