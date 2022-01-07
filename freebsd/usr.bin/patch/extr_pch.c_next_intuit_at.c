
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int LINENUM ;


 int p_base ;
 int p_bline ;

__attribute__((used)) static void
next_intuit_at(off_t file_pos, LINENUM file_line)
{
 p_base = file_pos;
 p_bline = file_line;
}
