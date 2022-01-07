
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t infile_current ;

__attribute__((used)) static void
infile_newdata(size_t newdata)
{

 infile_current += newdata;
}
