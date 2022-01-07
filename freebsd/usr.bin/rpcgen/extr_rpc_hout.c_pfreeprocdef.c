
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*) ;
 int fout ;
 int pvname (char const*,char const*) ;

__attribute__((used)) static void
pfreeprocdef(const char * name, const char *vers)
{
 f_print(fout, "extern int ");
 pvname(name, vers);
 f_print(fout, "_freeresult(SVCXPRT *, xdrproc_t, caddr_t);\n");
}
