
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xferstat {char* name; void* lastrcvd; void* rcvd; void* offset; void* size; int start; int last; int last2; } ;
typedef void* off_t ;


 int fprintf (int ,char*,char*) ;
 int gettimeofday (int *,int *) ;
 int memset (struct xferstat*,int ,int) ;
 int snprintf (char*,int,char*,char const*) ;
 int stat_display (struct xferstat*,int) ;
 int stderr ;
 scalar_t__ v_level ;
 scalar_t__ v_progress ;

__attribute__((used)) static void
stat_start(struct xferstat *xs, const char *name, off_t size, off_t offset)
{

 memset(xs, 0, sizeof *xs);
 snprintf(xs->name, sizeof xs->name, "%s", name);
 gettimeofday(&xs->start, ((void*)0));
 xs->last2 = xs->last = xs->start;
 xs->size = size;
 xs->offset = offset;
 xs->rcvd = offset;
 xs->lastrcvd = offset;
 if (v_progress)
  stat_display(xs, 1);
 else if (v_level > 0)
  fprintf(stderr, "%-46s", xs->name);
}
