
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct show_data {char const* pattern; int format; } ;


 int REPLACE_FORMAT_LONG ;
 int REPLACE_FORMAT_MEDIUM ;
 int REPLACE_FORMAT_SHORT ;
 int _ (char*) ;
 int error (int ,char const*) ;
 int for_each_replace_ref (int ,int ,void*) ;
 int show_reference ;
 int strcmp (char const*,char*) ;
 int the_repository ;

__attribute__((used)) static int list_replace_refs(const char *pattern, const char *format)
{
 struct show_data data;

 if (pattern == ((void*)0))
  pattern = "*";
 data.pattern = pattern;

 if (format == ((void*)0) || *format == '\0' || !strcmp(format, "short"))
  data.format = REPLACE_FORMAT_SHORT;
 else if (!strcmp(format, "medium"))
  data.format = REPLACE_FORMAT_MEDIUM;
 else if (!strcmp(format, "long"))
  data.format = REPLACE_FORMAT_LONG;




 else
  return error(_("invalid replace format '%s'\n"
          "valid formats are 'short', 'medium' and 'long'"),
        format);

 for_each_replace_ref(the_repository, show_reference, (void *)&data);

 return 0;
}
