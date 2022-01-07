
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port; } ;
typedef TYPE_1__ cx_board_t ;


 int BSR (int ) ;
 int BSR_NOINTR ;
 int inw (int ) ;

int cx_checkintr (cx_board_t *b)
{
 return (!(inw (BSR(b->port)) & BSR_NOINTR));
}
