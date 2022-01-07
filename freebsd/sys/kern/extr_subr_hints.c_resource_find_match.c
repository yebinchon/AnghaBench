
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int resource_find (int*,int*,int *,int *,char const*,char const*,char const**,int*,int*,int *,int *,int *) ;
 char* resource_string_copy (char const*,int) ;

int
resource_find_match(int *anchor, const char **name, int *unit,
    const char *resname, const char *value)
{
 const char *found_name;
 int found_namelen;
 int found_unit;
 int ret;
 int newln;

 newln = *anchor;
 ret = resource_find(anchor, &newln, ((void*)0), ((void*)0), resname, value,
     &found_name, &found_namelen, &found_unit, ((void*)0), ((void*)0), ((void*)0));
 if (ret == 0) {
  *name = resource_string_copy(found_name, found_namelen);
  *unit = found_unit;
 }
 *anchor = newln;
 return ret;
}
