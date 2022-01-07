
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int teken_t ;


 int TP_SETGLOBALCURSOR ;
 int teken_funcs_param (int const*,int ,unsigned int) ;

__attribute__((used)) static void
teken_subr_cons25_set_global_cursor_shape(const teken_t *t, unsigned int ncmds,
    const unsigned int cmds[])
{
 unsigned int code, i;
 if (ncmds > 3)
  return;
 code = 0;
 for (i = ncmds; i > 0; i--)
  code = (code << 8) | (cmds[i - 1] & 0xff);
 code = (code << 8) | ncmds;
 teken_funcs_param(t, TP_SETGLOBALCURSOR, code);
}
