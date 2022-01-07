
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct basl_fio {int dummy; } ;


 int basl_close (struct basl_fio*) ;

__attribute__((used)) static void
basl_end(struct basl_fio *in, struct basl_fio *out)
{

 basl_close(in);
 basl_close(out);
}
