
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

 fprintf(stderr, "usage: mptutil [-u unit] <command> ...\n\n");
 fprintf(stderr, "Commands include:\n");
 fprintf(stderr, "    version\n");
 fprintf(stderr, "    show adapter              - display controller information\n");
 fprintf(stderr, "    show config               - display RAID configuration\n");
 fprintf(stderr, "    show drives               - list physical drives\n");
 fprintf(stderr, "    show events               - display event log\n");
 fprintf(stderr, "    show volumes              - list logical volumes\n");
 fprintf(stderr, "    fail <drive>              - fail a physical drive\n");
 fprintf(stderr, "    online <drive>            - bring an offline physical drive online\n");
 fprintf(stderr, "    offline <drive>           - mark a physical drive offline\n");
 fprintf(stderr, "    name <volume> <name>\n");
 fprintf(stderr, "    volume status <volume>    - display volume status\n");
 fprintf(stderr, "    volume cache <volume> <enable|disable>\n");
 fprintf(stderr, "                              - Enable or disable the volume drive caches\n");
 fprintf(stderr, "    clear                     - clear volume configuration\n");
 fprintf(stderr, "    create <type> [-vq] [-s stripe] <drive>[,<drive>[,...]]\n");
 fprintf(stderr, "    delete <volume>\n");
 fprintf(stderr, "    add <drive> [volume]      - add a hot spare\n");
 fprintf(stderr, "    remove <drive>            - remove a hot spare\n");





 exit(1);
}
