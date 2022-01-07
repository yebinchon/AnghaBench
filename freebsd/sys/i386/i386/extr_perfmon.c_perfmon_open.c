
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int EBUSY ;
 int ENXIO ;
 int FWRITE ;
 int perfmon_cpuok ;
 int writer ;
 scalar_t__ writerpmc ;

__attribute__((used)) static int
perfmon_open(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 if (!perfmon_cpuok)
  return ENXIO;

 if (flags & FWRITE) {
  if (writer) {
   return EBUSY;
  } else {
   writer = 1;
   writerpmc = 0;
  }
 }
 return 0;
}
