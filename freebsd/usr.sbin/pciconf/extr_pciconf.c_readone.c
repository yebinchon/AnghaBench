
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcisel {int dummy; } ;


 int printf (char*,int,int ) ;
 int read_config (int,struct pcisel*,long,int) ;

__attribute__((used)) static void
readone(int fd, struct pcisel *sel, long reg, int width)
{

 printf("%0*x", width*2, read_config(fd, sel, reg, width));
}
