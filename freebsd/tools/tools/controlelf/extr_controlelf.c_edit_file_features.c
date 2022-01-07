
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int32_t ;
typedef scalar_t__ ssize_t ;
typedef int features ;
typedef int Elf ;


 int SEEK_SET ;
 int convert_to_feature_val (char*,int *) ;
 int get_file_features (int *,int,int,int *,int *) ;
 int lseek (int,int ,int ) ;
 int warnx (char*) ;
 scalar_t__ write (int,int *,int) ;

__attribute__((used)) static bool
edit_file_features(Elf *elf, int phcount, int fd, char *val)
{
 u_int32_t features;
 u_int64_t off;

 if (!get_file_features(elf, phcount, fd, &features, &off)) {
  warnx("NT_FREEBSD_FEATURE_CTL note not found");
  return (0);
 }

 if (!convert_to_feature_val(val, &features))
  return (0);

 if (lseek(fd, off, SEEK_SET) == -1 ||
     write(fd, &features, sizeof(features)) <
     (ssize_t)sizeof(features)) {
  warnx("error writing feature value");
  return (0);
 }
 return (1);
}
