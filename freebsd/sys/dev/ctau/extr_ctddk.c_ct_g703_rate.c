
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long rate; } ;
struct TYPE_5__ {int board; TYPE_1__ gopt; } ;
typedef TYPE_2__ ct_chan_t ;


 int ct_setup_g703 (int ) ;

__attribute__((used)) static void ct_g703_rate (ct_chan_t *c, unsigned long rate)
{
 c->gopt.rate = rate;
 ct_setup_g703 (c->board);
}
