
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clean_crap () ;
 int endwin () ;
 int exit (int) ;
 int perror (char*) ;
 int printf (char*,char*) ;

void die(int p, char* msg) {
 endwin();
 if (p)
  perror(msg);
 else
  printf("%s\n", msg);
 clean_crap();
 exit(1);
}
