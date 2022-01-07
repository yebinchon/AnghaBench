
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int xo_error (char*) ;
 int xo_finish () ;

__attribute__((used)) static void
usage(int wcmd)
{
 if (wcmd)
  xo_error("usage: w [-dhin] [-M core] [-N system] [user ...]\n");
 else
  xo_error("usage: uptime\n");
 xo_finish();
 exit(1);
}
