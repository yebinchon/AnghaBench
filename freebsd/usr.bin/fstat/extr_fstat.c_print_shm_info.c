
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmstat {int mode; int size; } ;
struct procstat {int dummy; } ;
struct filestat {char* fs_path; int fs_fflags; } ;
typedef int mode ;


 int _POSIX2_LINE_MAX ;
 scalar_t__ nflg ;
 int print_access_flags (int ) ;
 int printf (char*,...) ;
 int procstat_get_shm_info (struct procstat*,struct filestat*,struct shmstat*,char*) ;
 int snprintf (char*,int,char*,int) ;
 int strmode (int,char*) ;

__attribute__((used)) static void
print_shm_info(struct procstat *procstat, struct filestat *fst)
{
 struct shmstat shm;
 char errbuf[_POSIX2_LINE_MAX];
 char mode[15];
 int error;

 error = procstat_get_shm_info(procstat, fst, &shm, errbuf);
 if (error != 0) {
  printf("* error");
  return;
 }
 if (nflg) {
  printf("             ");
  (void)snprintf(mode, sizeof(mode), "%o", shm.mode);
 } else {
  printf(" %-15s", fst->fs_path != ((void*)0) ? fst->fs_path : "-");
  strmode(shm.mode, mode);
 }
 printf(" %10s %6ju", mode, shm.size);
 print_access_flags(fst->fs_fflags);
}
