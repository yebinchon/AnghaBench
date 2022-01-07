
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int alt_break_state ;
 int cfe_read (int ,unsigned char*,int) ;
 int conhandle ;
 int kdb_alt_break (unsigned char,int *) ;

__attribute__((used)) static int
cfe_cngetc(struct consdev *cp)
{
 unsigned char ch;

 if (cfe_read(conhandle, &ch, 1) == 1) {



  return (ch);
 }

 return (-1);
}
