
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* ccb_p ;
struct TYPE_7__ {TYPE_2__* cam_ccb; } ;
struct TYPE_5__ {int path; } ;
struct TYPE_6__ {TYPE_1__ ccb_h; } ;


 int xpt_print_path (int ) ;

__attribute__((used)) static void PRINT_ADDR (ccb_p cp)
{
 if (cp && cp->cam_ccb)
  xpt_print_path(cp->cam_ccb->ccb_h.path);
}
