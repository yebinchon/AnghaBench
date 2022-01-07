
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ocs_abort () ;
 int ocs_printf (char*,char const*,int,char const*) ;

void
_ocs_hw_assert(const char *cond, const char *filename, int linenum)
{
 ocs_printf("%s(%d): HW assertion (%s) failed\n", filename, linenum, cond);
 ocs_abort();

}
