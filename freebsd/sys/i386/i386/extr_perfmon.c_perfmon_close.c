
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int FWRITE ;
 int NPMC ;
 int perfmon_fini (int) ;
 scalar_t__ writer ;
 int writerpmc ;

__attribute__((used)) static int
perfmon_close(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 if (flags & FWRITE) {
  int i;

  for (i = 0; i < NPMC; i++) {
   if (writerpmc & (1 << i))
    perfmon_fini(i);
  }
  writer = 0;
 }
 return 0;
}
