
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXLINESIZE ;
 int curline ;
 int * defined ;
 scalar_t__ linenum ;
 int memset (int ,int ,int ) ;
 int where ;

void
reinitialize(void)
{
 memset(curline, 0, MAXLINESIZE);
 where = curline;
 linenum = 0;
 defined = ((void*)0);
}
