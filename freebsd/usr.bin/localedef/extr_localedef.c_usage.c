
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
 (void) fprintf(stderr, "Usage: localedef [options] localename\n");
 (void) fprintf(stderr, "[options] are:\n");
 (void) fprintf(stderr, "  -D          : BSD-style output\n");
 (void) fprintf(stderr, "  -b          : big-endian output\n");
 (void) fprintf(stderr, "  -c          : ignore warnings\n");
 (void) fprintf(stderr, "  -l          : little-endian output\n");
 (void) fprintf(stderr, "  -v          : verbose output\n");
 (void) fprintf(stderr, "  -U          : ignore undefined symbols\n");
 (void) fprintf(stderr, "  -f charmap  : use given charmap file\n");
 (void) fprintf(stderr, "  -u encoding : assume encoding\n");
 (void) fprintf(stderr, "  -w widths   : use screen widths file\n");
 (void) fprintf(stderr, "  -i locsrc   : source file for locale\n");
 exit(4);
}
