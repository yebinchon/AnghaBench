
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_cm_id {int dummy; } ;


 int qlnxr_iw_destroy_listen (struct iw_cm_id*) ;

__attribute__((used)) static int
__qlnxr_iw_destroy_listen(struct iw_cm_id *cm_id)
{
 qlnxr_iw_destroy_listen(cm_id);

 return (0);
}
