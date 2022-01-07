
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int total; } ;
struct TYPE_11__ {int name; TYPE_2__ stats; } ;
struct TYPE_10__ {scalar_t__ sz; } ;
struct TYPE_7__ {char* full; int base; } ;
struct physical {TYPE_5__ link; TYPE_4__ input; int connect_count; TYPE_3__* dl; TYPE_1__ name; } ;
struct TYPE_12__ {int unit; } ;
struct TYPE_9__ {TYPE_6__* bundle; } ;
typedef int FILE ;


 int Enabled (TYPE_6__*,int ) ;
 int * ID0fopen (char*,char*) ;
 int LogALERT ;
 int LogPHASE ;
 int OPT_THROUGHPUT ;
 int PATH_MAX ;
 char* TUN_NAME ;
 char* _PATH_VARRUN ;
 int errno ;
 int fclose (int *) ;
 int fprintf (int *,char*,char*,int ) ;
 int log_Printf (int ,char*,int ,...) ;
 int snprintf (char*,int,char*,char*,int ) ;
 int strerror (int ) ;
 int throughput_start (int *,char*,int ) ;

__attribute__((used)) static void
physical_Found(struct physical *p)
{
  FILE *lockfile;
  char fn[PATH_MAX];

  if (*p->name.full == '/') {
    snprintf(fn, sizeof fn, "%s%s.if", _PATH_VARRUN, p->name.base);
    lockfile = ID0fopen(fn, "w");
    if (lockfile != ((void*)0)) {
      fprintf(lockfile, "%s%d\n", TUN_NAME, p->dl->bundle->unit);
      fclose(lockfile);
    } else
      log_Printf(LogALERT, "%s: Can't create %s: %s\n",
                 p->link.name, fn, strerror(errno));
  }

  throughput_start(&p->link.stats.total, "physical throughput",
                   Enabled(p->dl->bundle, OPT_THROUGHPUT));
  p->connect_count++;
  p->input.sz = 0;

  log_Printf(LogPHASE, "%s: Connected!\n", p->link.name);
}
