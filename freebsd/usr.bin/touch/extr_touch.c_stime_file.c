
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct stat {struct timespec st_mtim; struct timespec st_atim; } ;


 int err (int,char*,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static void
stime_file(const char *fname, struct timespec *tsp)
{
 struct stat sb;

 if (stat(fname, &sb))
  err(1, "%s", fname);
 tsp[0] = sb.st_atim;
 tsp[1] = sb.st_mtim;
}
