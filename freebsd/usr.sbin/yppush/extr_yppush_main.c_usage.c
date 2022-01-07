
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage()
{
 fprintf (stderr, "%s\n%s\n",
 "usage: yppush [-d domain] [-t timeout] [-j #parallel jobs] [-h host]",
 "              [-p path] mapname");
 exit(1);
}
