
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ desiredvnodes ;
 scalar_t__ freevnodes ;
 int gapvnodes ;
 int imax (scalar_t__,int) ;
 scalar_t__ numvnodes ;
 int vhiwat ;
 int vlowat ;
 scalar_t__ wantfreevnodes ;

__attribute__((used)) static int
vspace(void)
{
 int space;

 gapvnodes = imax(desiredvnodes - wantfreevnodes, 100);
 vhiwat = gapvnodes / 11;
 vlowat = vhiwat / 2;
 if (numvnodes > desiredvnodes)
  return (0);
 space = desiredvnodes - numvnodes;
 if (freevnodes > wantfreevnodes)
  space += freevnodes - wantfreevnodes;
 return (space);
}
