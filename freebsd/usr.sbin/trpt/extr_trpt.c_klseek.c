
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int lseek (int,int ,int) ;

__attribute__((used)) static void
klseek(int fd, off_t base, int off)
{
 (void)lseek(fd, base, off);
}
