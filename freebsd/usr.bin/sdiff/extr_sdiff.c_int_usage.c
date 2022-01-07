
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int puts (char*) ;

__attribute__((used)) static void
int_usage(void)
{

 puts("e:\tedit blank diff\n"
     "eb:\tedit both diffs concatenated\n"
     "el:\tedit left diff\n"
     "er:\tedit right diff\n"
     "l | 1:\tchoose left diff\n"
     "r | 2:\tchoose right diff\n"
     "s:\tsilent mode--don't print identical lines\n"
     "v:\tverbose mode--print identical lines\n"
     "q:\tquit");
}
