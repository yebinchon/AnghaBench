
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p; int d; int l44; } ;
typedef TYPE_1__ e ;


 int l (int ,int,unsigned char) ;
 int l176 (int ,unsigned char,unsigned char) ;
 int u (int ,int ) ;

__attribute__((used)) static unsigned char l603(e*a,unsigned char
z){unsigned char l27=16<<a->p;unsigned char r=0;int c;l(a->d,40,0);
l176(a->d,(z<<1)|1,l27);{c=0;l539:if(!(c<8))goto l537;goto l534;l532:
++c;goto l539;l534:{l(a->d,40,l27|8);{if(!(u(a->d,a->l44)&128))goto
l458;r|=1<<c;l458:;}l(a->d,40,l27);}goto l532;l537:;}l(a->d,40,0);
return r;}
