
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err ;
 int fputs (char*,int ) ;

void
mfail(void)
{
 (void)fputs("pr: memory allocation failed\n", err);
}
