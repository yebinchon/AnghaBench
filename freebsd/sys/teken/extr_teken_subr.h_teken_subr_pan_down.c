
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int teken_t ;


 int teken_subr_do_scroll (int const*,int) ;

__attribute__((used)) static void
teken_subr_pan_down(const teken_t *t, unsigned int nrows)
{

 teken_subr_do_scroll(t, (int)nrows);
}
