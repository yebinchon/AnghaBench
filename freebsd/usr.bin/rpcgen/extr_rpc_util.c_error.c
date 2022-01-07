
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crash () ;
 int infilename ;
 int linenum ;
 int printwhere () ;
 int warnx (char*,int ,int ,char const*) ;

void
error(const char *msg)
{
 printwhere();
 warnx("%s, line %d: %s", infilename, linenum, msg);
 crash();
}
