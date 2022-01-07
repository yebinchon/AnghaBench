
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int errx (int ,char*) ;
 int * malloc (int) ;
 int need ;
 int sc_len ;
 int * sc_token ;
 int scc ;
 char** scp ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void
init_scanner(int argc, char **argv)
{
    scp = argv;
    scc = argc;
    need = 1;
    sc_len = 1;
    while (argc-- > 0)
 sc_len += strlen(*argv++);

    if ((sc_token = malloc(sc_len)) == ((void*)0))
 errx(EXIT_FAILURE, "virtual memory exhausted");
}
