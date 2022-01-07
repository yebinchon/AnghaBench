
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int xo_error (char*) ;

__attribute__((used)) static void
usage(void)
{
 xo_error("usage: wc [-Lclmw] [file ...]\n");
 exit(1);
}
