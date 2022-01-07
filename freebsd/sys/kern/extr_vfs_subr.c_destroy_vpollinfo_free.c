
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct vpollinfo {int vpi_lock; TYPE_1__ vpi_selinfo; } ;


 int knlist_destroy (int *) ;
 int mtx_destroy (int *) ;
 int uma_zfree (int ,struct vpollinfo*) ;
 int vnodepoll_zone ;

__attribute__((used)) static void
destroy_vpollinfo_free(struct vpollinfo *vi)
{

 knlist_destroy(&vi->vpi_selinfo.si_note);
 mtx_destroy(&vi->vpi_lock);
 uma_zfree(vnodepoll_zone, vi);
}
