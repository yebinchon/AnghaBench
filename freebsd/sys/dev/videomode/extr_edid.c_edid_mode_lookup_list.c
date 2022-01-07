
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int name; } ;


 scalar_t__ strcmp (char const*,int ) ;
 int videomode_count ;
 struct videomode const* videomode_list ;

__attribute__((used)) static const struct videomode *
edid_mode_lookup_list(const char *name)
{
 int i;

 for (i = 0; i < videomode_count; i++)
  if (strcmp(name, videomode_list[i].name) == 0)
   return &videomode_list[i];
 return ((void*)0);
}
