
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * infile ;
 scalar_t__ infile_current ;
 scalar_t__ infile_total ;

__attribute__((used)) static void
infile_clear(void)
{

 infile = ((void*)0);

 infile_total = infile_current = 0;

}
