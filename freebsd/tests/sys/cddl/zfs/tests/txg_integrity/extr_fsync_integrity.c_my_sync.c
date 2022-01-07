
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 scalar_t__ fsync (int) ;
 int perror (char*) ;

__attribute__((used)) static void
my_sync(int fd){
  if (fsync(fd)){
    perror("fsync");
    exit(1);
  }
}
