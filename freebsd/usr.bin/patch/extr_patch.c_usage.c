
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int fprintf (int ,char*) ;
 int my_exit (int ) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
"usage: patch [-bCcEeflNnRstuv] [-B backup-prefix] [-D symbol] [-d directory]\n"
"             [-F max-fuzz] [-i patchfile] [-o out-file] [-p strip-count]\n"
"             [-r rej-name] [-V t | nil | never | none] [-x number]\n"
"             [-z backup-ext] [--posix] [origfile [patchfile]]\n"
"       patch <patchfile\n");
 my_exit(EXIT_FAILURE);
}
