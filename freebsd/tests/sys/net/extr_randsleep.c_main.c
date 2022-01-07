
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ useconds_t ;


 scalar_t__ RANDOM_MAX ;
 scalar_t__ errno ;
 int exit (int) ;
 int perror (char*) ;
 int printf (char*) ;
 scalar_t__ random () ;
 int srandomdev () ;
 scalar_t__ strtol (char*,int *,int ) ;
 int usleep (scalar_t__) ;

int main(int argc, char** argv){
 useconds_t max_usecs, usecs;
 double frac;

 if (argc != 2) {
  printf("Usage: randsleep <max_microseconds>\n");
  exit(2);
 }

 errno = 0;
 max_usecs = (useconds_t)strtol(argv[1], ((void*)0), 0);
 if (errno != 0) {
  perror("strtol");
  exit(1);
 }
 srandomdev();
 frac = (double)random() / (double)RANDOM_MAX;
 usecs = (useconds_t)((double)max_usecs * frac);
 usleep(usecs);

 return (0);
}
