
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read_one_shm (char*) ;

__attribute__((used)) static int
read_shm(int argc, char **argv)
{
 int i, ret, ret1;

 ret = 0;
 for (i = 1; i < argc; i++) {
  ret1 = read_one_shm(argv[i]);
  if (ret1 != 0 && ret == 0)
   ret = ret1;
 }
 return (ret);
}
