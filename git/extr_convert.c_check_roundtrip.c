
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* check_roundtrip_encoding ;
 scalar_t__ isspace (char const) ;
 char* strcasestr (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int check_roundtrip(const char *enc_name)
{





 const char *found = strcasestr(check_roundtrip_encoding, enc_name);
 const char *next;
 int len;
 if (!found)
  return 0;
 next = found + strlen(enc_name);
 len = strlen(check_roundtrip_encoding);
 return (found && (





   found == check_roundtrip_encoding || (
    (isspace(found[-1]) || found[-1] == ',')
   )
  ) && (





   next == check_roundtrip_encoding + len || (
    next < check_roundtrip_encoding + len &&
    (isspace(next[0]) || next[0] == ',')
   )
  ));
}
