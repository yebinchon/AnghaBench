
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_8__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; } ;
struct stat {int st_mode; int st_uid; int st_gid; TYPE_4__ st_birthtim; TYPE_3__ st_ctim; scalar_t__ st_ctime; TYPE_2__ st_mtim; scalar_t__ st_mtime; TYPE_1__ st_atim; scalar_t__ st_atime; scalar_t__ st_size; scalar_t__ st_nlink; scalar_t__ st_ino; } ;
typedef int sizebuf ;


 int HN_AUTOSCALE ;
 int HN_NOSPACE ;
 int O_RDONLY ;
 int close (int) ;
 int fstat (int,struct stat*) ;
 char* group_from_gid (int,int ) ;
 int humanize_number (char*,int,scalar_t__,char*,int ,int ) ;
 int printf (char*,...) ;
 int shm_open (char const*,int ,int ) ;
 char* user_from_uid (int,int ) ;
 int warn (char*,char const*) ;

__attribute__((used)) static int
stat_one_shm(const char *path, bool hsize, bool uname)
{
 char sizebuf[8];
 struct stat st;
 int error, fd, ret;

 fd = shm_open(path, O_RDONLY, 0);
 if (fd == -1) {
  warn("open %s", path);
  return (1);
 }
 ret = 0;
 error = fstat(fd, &st);
 if (error == -1) {
  warn("stat %s", path);
  ret = 1;
 } else {
  printf("path\t%s\n", path);
  printf("inode\t%jd\n", (uintmax_t)st.st_ino);
  printf("mode\t%#o\n", st.st_mode);
  printf("nlink\t%jd\n", (uintmax_t)st.st_nlink);
  if (uname) {
   printf("owner\t%s\n", user_from_uid(st.st_uid, 0));
   printf("group\t%s\n", group_from_gid(st.st_gid, 0));
  } else {
   printf("uid\t%d\n", st.st_uid);
   printf("gid\t%d\n", st.st_gid);
  }
  if (hsize) {
   humanize_number(sizebuf, sizeof(sizebuf),
       st.st_size, "", HN_AUTOSCALE, HN_NOSPACE);
   printf("size\t%s\n", sizebuf);
  } else {
   printf("size\t%jd\n", (uintmax_t)st.st_size);
  }
  printf("atime\t%ld.%09ld\n", (long)st.st_atime,
      (long)st.st_atim.tv_nsec);
  printf("mtime\t%ld.%09ld\n", (long)st.st_mtime,
      (long)st.st_mtim.tv_nsec);
  printf("ctime\t%ld.%09ld\n", (long)st.st_ctime,
      (long)st.st_ctim.tv_nsec);
  printf("birth\t%ld.%09ld\n", (long)st.st_birthtim.tv_sec,
      (long)st.st_birthtim.tv_nsec);
 }
 close(fd);
 return (ret);
}
