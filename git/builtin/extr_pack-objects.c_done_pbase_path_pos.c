
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* done_pbase_paths ;
 int done_pbase_paths_num ;

__attribute__((used)) static int done_pbase_path_pos(unsigned hash)
{
 int lo = 0;
 int hi = done_pbase_paths_num;
 while (lo < hi) {
  int mi = lo + (hi - lo) / 2;
  if (done_pbase_paths[mi] == hash)
   return mi;
  if (done_pbase_paths[mi] < hash)
   hi = mi;
  else
   lo = mi + 1;
 }
 return -lo-1;
}
