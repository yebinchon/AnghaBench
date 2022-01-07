
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsizes {scalar_t__ ts_strsz; scalar_t__ ts_symsz; } ;


 int ksyms_size_permod ;
 int linker_file_foreach (int ,struct tsizes*) ;

__attribute__((used)) static void
ksyms_size_calc(struct tsizes *ts)
{

 ts->ts_symsz = 0;
 ts->ts_strsz = 0;

 (void)linker_file_foreach(ksyms_size_permod, ts);
}
