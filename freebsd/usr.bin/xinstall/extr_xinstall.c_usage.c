
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr,
"usage: install [-bCcpSsUv] [-f flags] [-g group] [-m mode] [-o owner]\n"
"               [-M log] [-D dest] [-h hash] [-T tags]\n"
"               [-B suffix] [-l linkflags] [-N dbdir]\n"
"               file1 file2\n"
"       install [-bCcpSsUv] [-f flags] [-g group] [-m mode] [-o owner]\n"
"               [-M log] [-D dest] [-h hash] [-T tags]\n"
"               [-B suffix] [-l linkflags] [-N dbdir]\n"
"               file1 ... fileN directory\n"
"       install -dU [-vU] [-g group] [-m mode] [-N dbdir] [-o owner]\n"
"               [-M log] [-D dest] [-h hash] [-T tags]\n"
"               directory ...\n");
 exit(EX_USAGE);

}
