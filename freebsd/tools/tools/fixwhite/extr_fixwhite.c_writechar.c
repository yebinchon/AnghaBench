
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 int column ;
 int exit (int) ;
 int perror (char*) ;
 scalar_t__ putchar (char) ;

__attribute__((used)) static void
writechar(char c)
{

 if (putchar(c) == EOF) {
  perror("write");
  exit(1);
 }

 column++;
}
