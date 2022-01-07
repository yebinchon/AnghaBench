
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lba_t ;
struct TYPE_2__ {int (* write ) (int ,int ) ;} ;


 int bootcode ;
 TYPE_1__* scheme ;
 int stub1 (int ,int ) ;

int
scheme_write(lba_t end)
{

 return ((scheme == ((void*)0)) ? 0 : scheme->write(end, bootcode));
}
