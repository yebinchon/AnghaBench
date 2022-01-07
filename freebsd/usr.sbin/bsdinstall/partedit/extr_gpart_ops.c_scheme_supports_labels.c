
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
scheme_supports_labels(const char *scheme)
{
 if (strcmp(scheme, "APM") == 0)
  return (1);
 if (strcmp(scheme, "GPT") == 0)
  return (1);

 return (0);
}
