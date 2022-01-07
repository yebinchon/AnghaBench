
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {long f_files; } ;


 int perror (char*) ;
 int statfs (char*,struct statfs*) ;

long
num_inodes_by_path(char *path)
{
 struct statfs buf;
 int error;

 error = statfs(path, &buf);
 if (error) {
  perror("statfs");
  return (-1);
 }

 return (buf.f_files);
}
