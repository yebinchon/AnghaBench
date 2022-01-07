
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long ru_maxrss; int ru_stime; int ru_utime; } ;
struct kinfo_proc {char* ki_tid; TYPE_1__ ki_rusage; int ki_comm; int ki_pid; } ;
struct TYPE_5__ {char* ri_name; int ri_scale; int ri_humanize; } ;


 int ENOMEM ;
 int PS_OPT_PERTHREAD ;
 int asprintf (char**,char*,char*) ;
 int format_time (int *) ;
 int format_value (long,int ,int ) ;
 int free (char*) ;
 unsigned int nitems (TYPE_2__*) ;
 int print_prefix (struct kinfo_proc*) ;
 int procstat_opts ;
 TYPE_2__* rusage_info ;
 int xo_close_container (char*) ;
 int xo_emit (char*,...) ;
 int xo_errc (int,int ,char*) ;
 int xo_open_container (char*) ;

__attribute__((used)) static void
print_rusage(struct kinfo_proc *kipp)
{
 long *lp;
 unsigned int i;
 char *field, *threadid;

 print_prefix(kipp);
 xo_emit("{d:resource/%-14s} {d:usage/%29s}{P:   }\n", "user time",
     format_time(&kipp->ki_rusage.ru_utime));
 print_prefix(kipp);
 xo_emit("{d:resource/%-14s} {d:usage/%29s}{P:   }\n", "system time",
     format_time(&kipp->ki_rusage.ru_stime));

 if ((procstat_opts & PS_OPT_PERTHREAD) != 0) {
  asprintf(&threadid, "%d", kipp->ki_tid);
  if (threadid == ((void*)0))
   xo_errc(1, ENOMEM,
       "Failed to allocate memory in print_rusage()");
  xo_open_container(threadid);
  xo_emit("{e:thread_id/%d}", kipp->ki_tid);
 } else {
  xo_emit("{e:process_id/%d}", kipp->ki_pid);
  xo_emit("{e:command/%s}", kipp->ki_comm);
 }
 xo_emit("{e:user time/%s}", format_time(&kipp->ki_rusage.ru_utime));
 xo_emit("{e:system time/%s}", format_time(&kipp->ki_rusage.ru_stime));

 lp = &kipp->ki_rusage.ru_maxrss;
 for (i = 0; i < nitems(rusage_info); i++) {
  print_prefix(kipp);
  asprintf(&field, "{e:%s/%%D}", rusage_info[i].ri_name);
  if (field == ((void*)0))
   xo_errc(1, ENOMEM,
       "Failed to allocate memory in print_rusage()");
  xo_emit(field, *lp);
  free(field);
  xo_emit("{d:resource/%-32s} {d:usage/%14s}\n",
      rusage_info[i].ri_name,
      format_value(*lp, rusage_info[i].ri_humanize,
      rusage_info[i].ri_scale));
  lp++;
 }
 if ((procstat_opts & PS_OPT_PERTHREAD) != 0) {
  xo_close_container(threadid);
  free(threadid);
 }
}
