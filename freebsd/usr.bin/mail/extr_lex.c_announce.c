
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dot ;
 int headers (int*) ;
 scalar_t__ inithdr ;
 int * message ;
 scalar_t__ msgCount ;
 int newfileinfo (int ) ;
 int * value (char*) ;

void
announce(void)
{
 int vec[2], mdot;

 mdot = newfileinfo(0);
 vec[0] = mdot;
 vec[1] = 0;
 dot = &message[mdot - 1];
 if (msgCount > 0 && value("noheader") == ((void*)0)) {
  inithdr++;
  headers(vec);
  inithdr = 0;
 }
}
