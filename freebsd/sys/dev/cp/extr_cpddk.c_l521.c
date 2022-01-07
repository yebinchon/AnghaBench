
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ g; } ;
typedef TYPE_1__ s ;



__attribute__((used)) static unsigned short l521(
s*b){int c;unsigned short r;unsigned short l222; * (volatile unsigned
short* )((b)->g+1024)=255;{c=255;l366:if(!(c>=0))goto l365;goto l370;
l371:c--;goto l366;l370:{ * (volatile unsigned short* )((b)->g+1028)=
c|32; * (volatile unsigned short* )((b)->g+1024)=255;r=( * (volatile
unsigned short* )((b)->g+1028))>>8;l222=((c&(~32))|((~(c<<1))&32));{
if(!(r!=l222))goto l372;{ * (volatile unsigned short* )((b)->g+1028)=
255;return(c|(r<<8));}l372:;}}goto l371;l365:;} * (volatile unsigned
short* )((b)->g+1028)=255;return 0;}
