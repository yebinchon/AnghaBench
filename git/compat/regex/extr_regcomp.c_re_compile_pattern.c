
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_pattern_buffer {int no_sub; int newline_anchor; } ;
typedef scalar_t__ reg_errcode_t ;


 int RE_NO_SUB ;
 scalar_t__ __re_error_msgid ;
 scalar_t__* __re_error_msgid_idx ;
 char const* gettext (scalar_t__) ;
 scalar_t__ re_compile_internal (struct re_pattern_buffer*,char const*,size_t,int) ;
 int re_syntax_options ;

const char *
re_compile_pattern (const char *pattern,
      size_t length,
      struct re_pattern_buffer *bufp)
{
  reg_errcode_t ret;




  bufp->no_sub = !!(re_syntax_options & RE_NO_SUB);


  bufp->newline_anchor = 1;

  ret = re_compile_internal (bufp, pattern, length, re_syntax_options);

  if (!ret)
    return ((void*)0);
  return gettext (__re_error_msgid + __re_error_msgid_idx[(int) ret]);
}
