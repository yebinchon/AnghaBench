
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_consumer {int dummy; } ;


 int G_LABEL_UFS_ID ;
 int g_label_ufs_taste_common (struct g_consumer*,char*,size_t,int ) ;

__attribute__((used)) static void
g_label_ufs_id_taste(struct g_consumer *cp, char *label, size_t size)
{

 g_label_ufs_taste_common(cp, label, size, G_LABEL_UFS_ID);
}
