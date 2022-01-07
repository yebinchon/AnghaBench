
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LINENUM ;


 int dump_line (scalar_t__,int) ;
 int fatal (char*) ;
 scalar_t__ last_frozen_line ;
 int last_line_missing_eol ;

__attribute__((used)) static void
copy_till(LINENUM lastline, bool endoffile)
{
 if (last_frozen_line > lastline)
  fatal("misordered hunks! output would be garbled\n");
 while (last_frozen_line < lastline) {
  if (++last_frozen_line == lastline && endoffile)
   dump_line(last_frozen_line, !last_line_missing_eol);
  else
   dump_line(last_frozen_line, 1);
 }
}
