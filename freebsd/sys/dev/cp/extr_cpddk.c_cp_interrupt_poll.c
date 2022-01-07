
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ g; } ;
typedef TYPE_1__ s ;



int cp_interrupt_poll(s*b,int l217){unsigned long l192= * (volatile
unsigned long* )((b)->g+4);;{if(!(!l192))goto l243;return 0;l243:;}{
if(!(l217))goto l825; * (volatile unsigned long* )((b)->g+4)=l192;
l825:;}return 1;}
