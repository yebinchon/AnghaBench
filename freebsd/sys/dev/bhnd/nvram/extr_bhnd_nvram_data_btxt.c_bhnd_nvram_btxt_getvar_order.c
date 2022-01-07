
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;



__attribute__((used)) static int
bhnd_nvram_btxt_getvar_order(struct bhnd_nvram_data *nv, void *cookiep1,
    void *cookiep2)
{
 if (cookiep1 < cookiep2)
  return (-1);

 if (cookiep1 > cookiep2)
  return (1);

 return (0);
}
