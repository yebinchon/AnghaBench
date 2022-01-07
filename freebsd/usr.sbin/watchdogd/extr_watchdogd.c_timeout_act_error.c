
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * at_act; } ;


 int EX_OSERR ;
 TYPE_1__* act_tbl ;
 int asprintf (char**,char*,char*,char*,int *) ;
 int err (int ,char*) ;
 int free (char*) ;
 int usage () ;
 int warnx (char*,char const*,char const*,char*) ;

__attribute__((used)) static void
timeout_act_error(const char *lopt, const char *badact)
{
 char *opts, *oldopts;
 int i;

 opts = ((void*)0);
 for (i = 0; act_tbl[i].at_act != ((void*)0); i++) {
  oldopts = opts;
  if (asprintf(&opts, "%s%s%s",
      oldopts == ((void*)0) ? "" : oldopts,
      oldopts == ((void*)0) ? "" : ", ",
      act_tbl[i].at_act) == -1)
   err(EX_OSERR, "malloc");
  free(oldopts);
 }
 warnx("bad --%s argument '%s' must be one of (%s).",
     lopt, badact, opts);
 usage();
}
