
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lun {int l_device_id; } ;


 int checked_strdup (char const*) ;
 int free (int ) ;

void
lun_set_device_id(struct lun *lun, const char *value)
{
 free(lun->l_device_id);
 lun->l_device_id = checked_strdup(value);
}
