
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int timestr ;
struct tm {int dummy; } ;
struct TYPE_8__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct stat {int st_flags; scalar_t__ st_blocks; scalar_t__ st_blksize; scalar_t__ st_size; TYPE_4__ st_birthtim; TYPE_3__ st_ctim; TYPE_2__ st_mtim; TYPE_1__ st_atim; scalar_t__ st_rdev; scalar_t__ st_gid; scalar_t__ st_uid; scalar_t__ st_nlink; scalar_t__ st_mode; scalar_t__ st_ino; scalar_t__ st_dev; } ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
typedef int intmax_t ;


 int PATH_MAX ;
 int TIME_FORMAT ;
 struct group* cap_getgrgid (int *,scalar_t__) ;
 struct passwd* cap_getpwuid (int *,scalar_t__) ;
 int * capgrp ;
 int * cappwd ;
 struct group* getgrgid (scalar_t__) ;
 struct passwd* getpwuid (scalar_t__) ;
 struct tm* localtime (scalar_t__*) ;
 int printf (char*,...) ;
 int resolv ;
 int strftime (char*,int,int ,struct tm*) ;
 int strmode (scalar_t__,char*) ;

void
ktrstat(struct stat *statp)
{
 char mode[12], timestr[PATH_MAX + 4];
 struct passwd *pwd;
 struct group *grp;
 struct tm *tm;





 printf("struct stat {");
 printf("dev=%ju, ino=%ju, ",
  (uintmax_t)statp->st_dev, (uintmax_t)statp->st_ino);
 if (!resolv)
  printf("mode=0%jo, ", (uintmax_t)statp->st_mode);
 else {
  strmode(statp->st_mode, mode);
  printf("mode=%s, ", mode);
 }
 printf("nlink=%ju, ", (uintmax_t)statp->st_nlink);
 if (!resolv) {
  pwd = ((void*)0);
 } else {





   pwd = getpwuid(statp->st_uid);
 }
 if (pwd == ((void*)0))
  printf("uid=%ju, ", (uintmax_t)statp->st_uid);
 else
  printf("uid=\"%s\", ", pwd->pw_name);
 if (!resolv) {
  grp = ((void*)0);
 } else {





   grp = getgrgid(statp->st_gid);
 }
 if (grp == ((void*)0))
  printf("gid=%ju, ", (uintmax_t)statp->st_gid);
 else
  printf("gid=\"%s\", ", grp->gr_name);
 printf("rdev=%ju, ", (uintmax_t)statp->st_rdev);
 printf("atime=");
 if (!resolv)
  printf("%jd", (intmax_t)statp->st_atim.tv_sec);
 else {
  tm = localtime(&statp->st_atim.tv_sec);
  strftime(timestr, sizeof(timestr), TIME_FORMAT, tm);
  printf("\"%s\"", timestr);
 }
 if (statp->st_atim.tv_nsec != 0)
  printf(".%09ld, ", statp->st_atim.tv_nsec);
 else
  printf(", ");
 printf("mtime=");
 if (!resolv)
  printf("%jd", (intmax_t)statp->st_mtim.tv_sec);
 else {
  tm = localtime(&statp->st_mtim.tv_sec);
  strftime(timestr, sizeof(timestr), TIME_FORMAT, tm);
  printf("\"%s\"", timestr);
 }
 if (statp->st_mtim.tv_nsec != 0)
  printf(".%09ld, ", statp->st_mtim.tv_nsec);
 else
  printf(", ");
 printf("ctime=");
 if (!resolv)
  printf("%jd", (intmax_t)statp->st_ctim.tv_sec);
 else {
  tm = localtime(&statp->st_ctim.tv_sec);
  strftime(timestr, sizeof(timestr), TIME_FORMAT, tm);
  printf("\"%s\"", timestr);
 }
 if (statp->st_ctim.tv_nsec != 0)
  printf(".%09ld, ", statp->st_ctim.tv_nsec);
 else
  printf(", ");
 printf("birthtime=");
 if (!resolv)
  printf("%jd", (intmax_t)statp->st_birthtim.tv_sec);
 else {
  tm = localtime(&statp->st_birthtim.tv_sec);
  strftime(timestr, sizeof(timestr), TIME_FORMAT, tm);
  printf("\"%s\"", timestr);
 }
 if (statp->st_birthtim.tv_nsec != 0)
  printf(".%09ld, ", statp->st_birthtim.tv_nsec);
 else
  printf(", ");
 printf("size=%jd, blksize=%ju, blocks=%jd, flags=0x%x",
  (uintmax_t)statp->st_size, (uintmax_t)statp->st_blksize,
  (intmax_t)statp->st_blocks, statp->st_flags);
 printf(" }\n");
}
