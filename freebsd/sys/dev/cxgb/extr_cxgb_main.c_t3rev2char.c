
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct adapter {TYPE_1__ params; } ;







__attribute__((used)) static __inline char
t3rev2char(struct adapter *adapter)
{
 char rev = 'z';

 switch(adapter->params.rev) {
 case 131:
  rev = 'a';
  break;
 case 130:
 case 129:
  rev = 'b';
  break;
 case 128:
  rev = 'c';
  break;
 }
 return rev;
}
