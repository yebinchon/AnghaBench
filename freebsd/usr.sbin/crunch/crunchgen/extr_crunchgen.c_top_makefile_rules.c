
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; char* ident; struct TYPE_3__* next; } ;
typedef TYPE_1__ prog_t ;
typedef int FILE ;


 scalar_t__ buildopts ;
 char* execfname ;
 int fprintf (int *,char*,...) ;
 scalar_t__ libs ;
 scalar_t__ libs_so ;
 scalar_t__ makeobj ;
 char* objprefix ;
 int output_strlst (int *,scalar_t__) ;
 TYPE_1__* progs ;
 scalar_t__ subtract_strlst (scalar_t__*,scalar_t__*) ;

void
top_makefile_rules(FILE *outmk)
{
 prog_t *p;

 fprintf(outmk, "LD?= ld\n");
 if ( subtract_strlst(&libs, &libs_so) )
  fprintf(outmk, "# NOTE: Some LIBS declarations below overridden by LIBS_SO\n");

 fprintf(outmk, "LIBS+=");
 output_strlst(outmk, libs);

 fprintf(outmk, "LIBS_SO+=");
 output_strlst(outmk, libs_so);

 if (makeobj) {
  fprintf(outmk, "MAKEOBJDIRPREFIX?=%s\n", objprefix);
  fprintf(outmk, "MAKEENV=env MAKEOBJDIRPREFIX=$(MAKEOBJDIRPREFIX)\n");
  fprintf(outmk, "CRUNCHMAKE=$(MAKEENV) $(MAKE)\n");
 } else {
  fprintf(outmk, "CRUNCHMAKE=$(MAKE)\n");
 }

 if (buildopts) {
  fprintf(outmk, "BUILDOPTS+=");
  output_strlst(outmk, buildopts);
 }

 fprintf(outmk, "CRUNCHED_OBJS=");
 for (p = progs; p != ((void*)0); p = p->next)
  fprintf(outmk, " %s.lo", p->name);
 fprintf(outmk, "\n");

 fprintf(outmk, "SUBMAKE_TARGETS=");
 for (p = progs; p != ((void*)0); p = p->next)
  fprintf(outmk, " %s_make", p->ident);
 fprintf(outmk, "\nSUBCLEAN_TARGETS=");
 for (p = progs; p != ((void*)0); p = p->next)
  fprintf(outmk, " %s_clean", p->ident);
 fprintf(outmk, "\n\n");

 fprintf(outmk, "all: objs exe\nobjs: $(SUBMAKE_TARGETS)\n");
 fprintf(outmk, "exe: %s\n", execfname);
 fprintf(outmk, "%s: %s.o $(CRUNCHED_OBJS) $(SUBMAKE_TARGETS)\n", execfname, execfname);
 fprintf(outmk, ".if defined(LIBS_SO) && !empty(LIBS_SO)\n");
 fprintf(outmk, "\t$(CC) -o %s %s.o $(CRUNCHED_OBJS) \\\n",
     execfname, execfname);
 fprintf(outmk, "\t\t-Xlinker -Bstatic $(LIBS) \\\n");
 fprintf(outmk, "\t\t-Xlinker -Bdynamic $(LIBS_SO)\n");
 fprintf(outmk, ".else\n");
 fprintf(outmk, "\t$(CC) -static -o %s %s.o $(CRUNCHED_OBJS) $(LIBS)\n",
     execfname, execfname);
 fprintf(outmk, ".endif\n");
 fprintf(outmk, "realclean: clean subclean\n");
 fprintf(outmk, "clean:\n\trm -f %s *.lo *.o *_stub.c\n", execfname);
 fprintf(outmk, "subclean: $(SUBCLEAN_TARGETS)\n");
}
