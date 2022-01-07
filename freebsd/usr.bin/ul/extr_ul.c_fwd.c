
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int col ;
 int flushln () ;
 int maxcol ;

__attribute__((used)) static void
fwd(void)
{
 int oldcol, oldmax;

 oldcol = col;
 oldmax = maxcol;
 flushln();
 col = oldcol;
 maxcol = oldmax;
}
