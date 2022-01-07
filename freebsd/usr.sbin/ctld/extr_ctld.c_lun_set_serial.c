
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lun {int l_serial; } ;


 int checked_strdup (char const*) ;
 int free (int ) ;

void
lun_set_serial(struct lun *lun, const char *value)
{
 free(lun->l_serial);
 lun->l_serial = checked_strdup(value);
}
