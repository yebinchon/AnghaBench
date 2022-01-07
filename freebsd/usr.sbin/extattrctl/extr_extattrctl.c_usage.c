
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage(void)
{

 fprintf(stderr,
     "usage:\n"
     "  extattrctl start path\n"
     "  extattrctl stop path\n"
     "  extattrctl initattr [-f] [-p path] attrsize attrfile\n"
     "  extattrctl showattr attrfile\n"
     "  extattrctl enable path attrnamespace attrname attrfile\n"
     "  extattrctl disable path attrnamespace attrname\n");
 exit(-1);
}
