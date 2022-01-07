
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sanitize_envline (char*,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static bool
preprocess(char *line, char *result)
{
 char *s;


 if ((s = strchr(line, '#')) != ((void*)0))
  *s = '\0';
 sanitize_envline(result, line);

 return (*result != '\0');
}
