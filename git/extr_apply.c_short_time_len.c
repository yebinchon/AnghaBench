
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (int ) ;
 size_t strlen (char*) ;

__attribute__((used)) static size_t short_time_len(const char *line, size_t len)
{
 const char *time, *p;

 if (len < strlen(" 07:01:32") || line[len-strlen(":32")] != ':')
  return 0;
 p = time = line + len - strlen(" 07:01:32");


 if (*p++ != ' ' ||
     !isdigit(*p++) || !isdigit(*p++) || *p++ != ':' ||
     !isdigit(*p++) || !isdigit(*p++) || *p++ != ':' ||
     !isdigit(*p++) || !isdigit(*p++))
  return 0;

 return line + len - time;
}
