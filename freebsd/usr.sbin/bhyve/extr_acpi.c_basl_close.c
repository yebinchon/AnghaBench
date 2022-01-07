
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct basl_fio {int fp; int f_name; } ;


 int basl_keep_temps ;
 int fclose (int ) ;
 int unlink (int ) ;

__attribute__((used)) static void
basl_close(struct basl_fio *bf)
{

 if (!basl_keep_temps)
  unlink(bf->f_name);
 fclose(bf->fp);
}
