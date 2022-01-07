
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int letter_to_flag (int ) ;
 unsigned int trace_flags ;

void
set_trace_flags(const char *s)
{
 char mode = 0;
 unsigned int f = 0;

 if (*s == '+' || *s == '-')
  mode = *s++;
 while (*s)
  f |= letter_to_flag(*s++);
 switch(mode) {
 case 0:
  trace_flags = f;
  break;
 case '+':
  trace_flags |= f;
  break;
 case '-':
  trace_flags &= ~f;
  break;
 }
}
