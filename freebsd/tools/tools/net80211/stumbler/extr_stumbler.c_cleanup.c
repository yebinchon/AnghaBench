
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clean_crap () ;
 int endwin () ;
 int exit (int ) ;

void cleanup(int x) {
 endwin();
 clean_crap();
 exit(0);
}
