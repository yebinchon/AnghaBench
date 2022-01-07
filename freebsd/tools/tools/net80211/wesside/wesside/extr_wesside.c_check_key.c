
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; } ;
typedef int buf ;
struct TYPE_2__ {double tv_sec; } ;


 int KEY_FILE ;
 int O_RDONLY ;
 int close (int) ;
 int exit (int) ;
 int gettimeofday (struct timeval*,int *) ;
 int open (int ,int ) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int read (int,char*,int) ;
 TYPE_1__ real_start ;
 int time_print (char*,char*) ;

void check_key() {
 char buf[1024];
 int fd;
 int rd;
 struct timeval now;

 fd = open(KEY_FILE, O_RDONLY);

 if (fd == -1) {
  return;
 }

 rd = read(fd, buf, sizeof(buf) -1);
 if (rd == -1) {
  perror("read()");
  exit(1);
 }

 buf[rd] = 0;

 close(fd);

 printf ("\n\n");
 time_print("KEY=(%s)\n", buf);

 if (gettimeofday(&now, ((void*)0)) == -1) {
  perror("gettimeofday()");
  exit(1);
 }

 printf ("Owned in %.02f minutes\n",
  ((double) now.tv_sec - real_start.tv_sec)/60.0);
 exit(0);
}
