
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int mailname ;
 int open (int ,int,int) ;
 scalar_t__ rm (int ) ;
 int * value (char*) ;

void
demail(void)
{
 int fd;

 if (value("keep") != ((void*)0) || rm(mailname) < 0)
  if ((fd = open(mailname, O_CREAT | O_TRUNC | O_WRONLY, 0600)) >=
      0)
   (void)close(fd);
}
