
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int lba_t ;
struct TYPE_2__ {int (* metadata ) (int ,int ) ;} ;


 TYPE_1__* scheme ;
 int stub1 (int ,int ) ;

lba_t
scheme_metadata(u_int where, lba_t start)
{

 return ((scheme == ((void*)0)) ? start : scheme->metadata(where, start));
}
