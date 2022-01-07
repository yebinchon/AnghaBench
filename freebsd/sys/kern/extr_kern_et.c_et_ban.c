
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {int et_flags; } ;


 int ET_FLAGS_ONESHOT ;
 int ET_FLAGS_PERIODIC ;

int
et_ban(struct eventtimer *et)
{

 et->et_flags &= ~(ET_FLAGS_PERIODIC | ET_FLAGS_ONESHOT);
 return (0);
}
