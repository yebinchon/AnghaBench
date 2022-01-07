
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;

void
badsfmt(void)
{
 errx(1, "%%s: requires a precision or a byte count");
}
