
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int term_attr_t ;
struct winsize {int dummy; } ;
struct terminal {int dummy; } ;


 int default_message ;
 int terminal_set_winsize_blank (struct terminal*,struct winsize const*,int,int const*) ;

void
terminal_set_winsize(struct terminal *tm, const struct winsize *size)
{

 terminal_set_winsize_blank(tm, size, 1,
     (const term_attr_t *)&default_message);
}
