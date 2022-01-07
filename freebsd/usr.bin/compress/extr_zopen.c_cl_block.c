
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_zstate {int dummy; } ;
typedef int count_int ;
typedef int code_int ;


 scalar_t__ CHECK_GAP ;
 scalar_t__ CLEAR ;
 int FIRST ;
 int bytes_out ;
 scalar_t__ checkpoint ;
 int cl_hash (struct s_zstate*,int ) ;
 int clear_flg ;
 int free_ent ;
 scalar_t__ hsize ;
 int in_count ;
 int output (struct s_zstate*,int ) ;
 long ratio ;

__attribute__((used)) static int
cl_block(struct s_zstate *zs)
{
 long rat;

 checkpoint = in_count + CHECK_GAP;

 if (in_count > 0x007fffff) {
  rat = bytes_out >> 8;
  if (rat == 0)
   rat = 0x7fffffff;
  else
   rat = in_count / rat;
 } else
  rat = (in_count << 8) / bytes_out;
 if (rat > ratio)
  ratio = rat;
 else {
  ratio = 0;
  cl_hash(zs, (count_int) hsize);
  free_ent = FIRST;
  clear_flg = 1;
  if (output(zs, (code_int) CLEAR) == -1)
   return (-1);
 }
 return (0);
}
