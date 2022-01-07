
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 scalar_t__ OF_read (int ,unsigned char*,int) ;
 int alt_break_state ;
 int kdb_alt_break (unsigned char,int *) ;
 int stdin ;

__attribute__((used)) static int
ofw_cngetc(struct consdev *cp)
{
 unsigned char ch;

 if (OF_read(stdin, &ch, 1) > 0) {



  return (ch);
 }

 return (-1);
}
