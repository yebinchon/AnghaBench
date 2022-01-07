
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct basl_fio {int dummy; } ;


 int basl_close (struct basl_fio*) ;
 int basl_open (struct basl_fio*,int) ;

__attribute__((used)) static int
basl_start(struct basl_fio *in, struct basl_fio *out)
{
 int err;

 err = basl_open(in, 0);
 if (!err) {
  err = basl_open(out, 1);
  if (err) {
   basl_close(in);
  }
 }

 return (err);
}
