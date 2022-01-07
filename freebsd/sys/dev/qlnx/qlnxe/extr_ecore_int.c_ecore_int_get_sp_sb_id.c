
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ecore_hwfn {TYPE_2__* p_sp_sb; } ;
struct TYPE_3__ {int igu_sb_id; } ;
struct TYPE_4__ {TYPE_1__ sb_info; } ;



u16 ecore_int_get_sp_sb_id(struct ecore_hwfn *p_hwfn)
{
 return p_hwfn->p_sp_sb->sb_info.igu_sb_id;
}
