
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,...) ;

void usage(char* message) {
 if (message != ((void*)0))
  printf ("error: %s\n", message);
 printf("usage: ether_reflect -i interface -e ethertype "
        "-a address -t timeout -p -d\n");
 exit(1);
}
