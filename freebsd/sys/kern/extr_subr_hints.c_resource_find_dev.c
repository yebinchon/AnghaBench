
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int resource_find (int*,int*,char const*,int *,char const*,char const*,int *,int *,int*,int *,int *,int *) ;

int
resource_find_dev(int *anchor, const char *name, int *unit,
    const char *resname, const char *value)
{
 int found_unit;
 int newln;
 int ret;

 newln = *anchor;
 ret = resource_find(anchor, &newln, name, ((void*)0), resname, value,
     ((void*)0), ((void*)0), &found_unit, ((void*)0), ((void*)0), ((void*)0));
 if (ret == 0) {
  *unit = found_unit;
 }
 *anchor = newln;
 return ret;
}
