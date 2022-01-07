
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TERM_SPACE ;
 int TERM_TAB ;

__attribute__((used)) static int name_terminate(int c, int terminate)
{
 if (c == ' ' && !(terminate & TERM_SPACE))
  return 0;
 if (c == '\t' && !(terminate & TERM_TAB))
  return 0;

 return 1;
}
