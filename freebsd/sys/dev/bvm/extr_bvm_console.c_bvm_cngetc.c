
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int alt_break_state ;
 scalar_t__ bvm_rcons (unsigned char*) ;
 int kdb_alt_break (unsigned char,int *) ;

__attribute__((used)) static int
bvm_cngetc(struct consdev *cp)
{
 unsigned char ch;

 if (bvm_rcons(&ch) == 0) {



  return (ch);
 }

 return (-1);
}
