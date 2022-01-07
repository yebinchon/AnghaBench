
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{






 fprintf(stderr, "usage: iostat [-CdhIKoTxz?] [-c count] [-M core]"
  " [-n devs] [-N system]\n"
  "\t      [-t type,if,pass] [-w wait] [drives]\n");
}
