
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Bflag ;
 int GMON_PROF_HIRES ;
 int GMON_PROF_ON ;
 scalar_t__ bflag ;
 int fprintf (int ,char*) ;
 scalar_t__ hflag ;
 scalar_t__ pflag ;
 scalar_t__ rflag ;
 int stderr ;

void
kern_readonly(int mode)
{

 (void)fprintf(stderr, "kgmon: kernel read-only: ");
 if (pflag && (mode == GMON_PROF_HIRES || mode == GMON_PROF_ON))
  (void)fprintf(stderr, "data may be inconsistent\n");
 if (rflag)
  (void)fprintf(stderr, "-r suppressed\n");
 if (Bflag)
  (void)fprintf(stderr, "-B suppressed\n");
 if (bflag)
  (void)fprintf(stderr, "-b suppressed\n");
 if (hflag)
  (void)fprintf(stderr, "-h suppressed\n");
 rflag = Bflag = bflag = hflag = 0;
}
