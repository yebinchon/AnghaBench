
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_tr_raid5_object {int * trso_buffer; } ;
struct g_raid_tr_object {int dummy; } ;


 int M_TR_RAID5 ;
 int free (int *,int ) ;

__attribute__((used)) static int
g_raid_tr_free_raid5(struct g_raid_tr_object *tr)
{
 struct g_raid_tr_raid5_object *trs;

 trs = (struct g_raid_tr_raid5_object *)tr;

 if (trs->trso_buffer != ((void*)0)) {
  free(trs->trso_buffer, M_TR_RAID5);
  trs->trso_buffer = ((void*)0);
 }
 return (0);
}
