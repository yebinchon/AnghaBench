
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dinode {int dummy; } dinode ;
struct fs {int dummy; } ;


 int DIP (struct fs*,union dinode*,int ) ;





 int IFMT ;



 int di_mode ;
 int errx (int,char*,int) ;

__attribute__((used)) static int
isfree(struct fs *super, union dinode *dp)
{




 switch (DIP(super, dp, di_mode) & IFMT) {
 case 132:
 case 131:
 case 133:
 case 130:
  return 0;
 case 134:
 case 135:
 case 129:
 case 128:
 case 0:
  return 1;
 default:
  errx(1, "unknown IFMT 0%o", DIP(super, dp, di_mode) & IFMT);
 }

}
