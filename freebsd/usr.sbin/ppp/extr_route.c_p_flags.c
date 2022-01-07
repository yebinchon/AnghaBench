
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct prompt {int dummy; } ;
struct bits {int b_mask; int b_val; } ;


 struct bits* bits ;
 int prompt_Printf (struct prompt*,char*,int,int,char*) ;

__attribute__((used)) static void
p_flags(struct prompt *prompt, u_int32_t f, unsigned max)
{
  char name[33], *flags;
  register struct bits *p = bits;

  if (max > sizeof name - 1)
    max = sizeof name - 1;

  for (flags = name; p->b_mask && flags - name < (int)max; p++)
    if (p->b_mask & f)
      *flags++ = p->b_val;
  *flags = '\0';
  prompt_Printf(prompt, "%-*.*s", (int)max, (int)max, name);
}
