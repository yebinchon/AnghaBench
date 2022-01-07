
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 int fatal (char const*) ;

void
fatalx(const char *emsg)
{
 errno = 0;
 fatal(emsg);
}
