
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct vpollinfo {TYPE_1__ vpi_selinfo; } ;


 int destroy_vpollinfo_free (struct vpollinfo*) ;
 int knlist_clear (int *,int) ;
 int seldrain (TYPE_1__*) ;

__attribute__((used)) static void
destroy_vpollinfo(struct vpollinfo *vi)
{

 knlist_clear(&vi->vpi_selinfo.si_note, 1);
 seldrain(&vi->vpi_selinfo);
 destroy_vpollinfo_free(vi);
}
