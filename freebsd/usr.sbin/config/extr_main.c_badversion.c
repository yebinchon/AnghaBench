
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIGVERS ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int versreq ;

__attribute__((used)) static void
badversion(void)
{
 fprintf(stderr, "ERROR: version of config(8) does not match kernel!\n");
 fprintf(stderr, "config version = %d, ", CONFIGVERS);
 fprintf(stderr, "version required = %d\n\n", versreq);
 fprintf(stderr, "Make sure that /usr/src/usr.sbin/config is in sync\n");
 fprintf(stderr, "with your /usr/src/sys and install a new config binary\n");
 fprintf(stderr, "before trying this again.\n\n");
 fprintf(stderr, "If running the new config fails check your config\n");
 fprintf(stderr, "file against the GENERIC or LINT config files for\n");
 fprintf(stderr, "changes in config syntax, or option/device naming\n");
 fprintf(stderr, "conventions\n\n");
 exit(1);
}
