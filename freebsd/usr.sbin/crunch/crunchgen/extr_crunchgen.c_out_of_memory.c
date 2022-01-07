
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,int ,int ) ;
 int infilename ;
 int linenum ;

void
out_of_memory(void)
{
 err(1, "%s: %d: out of memory, stopping", infilename, linenum);
}
