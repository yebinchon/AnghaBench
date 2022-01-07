
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int shm_unlink (char const*) ;
 int warn (char*,char const*) ;

__attribute__((used)) static int
delete_one_shm(const char *path)
{
 int error, ret;

 error = shm_unlink(path);
 if (error != 0) {
  warn("unlink of %s failed", path);
  ret = 1;
 } else {
  ret = 0;
 }
 return (ret);
}
