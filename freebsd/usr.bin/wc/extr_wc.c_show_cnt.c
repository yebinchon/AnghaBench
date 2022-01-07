
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_handle_t ;
typedef int uintmax_t ;


 scalar_t__ dochar ;
 scalar_t__ doline ;
 scalar_t__ dolongline ;
 scalar_t__ domulti ;
 scalar_t__ doword ;
 scalar_t__ siginfo ;
 int * stderr_handle ;
 int xo_emit_h (int *,char*,...) ;

__attribute__((used)) static void
show_cnt(const char *file, uintmax_t linect, uintmax_t wordct,
    uintmax_t charct, uintmax_t llct)
{
 xo_handle_t *xop;

 if (!siginfo)
  xop = ((void*)0);
 else {
  xop = stderr_handle;
  siginfo = 0;
 }

 if (doline)
  xo_emit_h(xop, " {:lines/%7ju/%ju}", linect);
 if (doword)
  xo_emit_h(xop, " {:words/%7ju/%ju}", wordct);
 if (dochar || domulti)
  xo_emit_h(xop, " {:characters/%7ju/%ju}", charct);
 if (dolongline)
  xo_emit_h(xop, " {:long-lines/%7ju/%ju}", llct);
 if (file != ((void*)0))
  xo_emit_h(xop, " {:filename/%s}\n", file);
 else
  xo_emit_h(xop, "\n");
}
