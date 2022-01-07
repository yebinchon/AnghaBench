
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_disk_config (char*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* strsep (char**,char*) ;

int
scripted_editor(int argc, const char **argv)
{
 char *token;
 int i, error = 0, len = 0;

 for (i = 1; i < argc; i++)
  len += strlen(argv[i]) + 1;
 char inputbuf[len], *input = inputbuf;
 strcpy(input, argv[1]);
 for (i = 2; i < argc; i++) {
  strcat(input, " ");
  strcat(input, argv[i]);
 }

 while ((token = strsep(&input, ";")) != ((void*)0)) {
  error = parse_disk_config(token);
  if (error != 0)
   return (error);
 }

 return (0);
}
