
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lun {int l_path; } ;


 int checked_strdup (char const*) ;
 int free (int ) ;

void
lun_set_path(struct lun *lun, const char *value)
{
 free(lun->l_path);
 lun->l_path = checked_strdup(value);
}
