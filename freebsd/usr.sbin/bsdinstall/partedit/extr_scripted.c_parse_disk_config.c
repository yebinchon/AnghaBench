
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 scalar_t__ isspace (char) ;
 int part_config (char*,char*,char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static
int parse_disk_config(char *input)
{
 char *ap;
 char *disk = ((void*)0), *scheme = ((void*)0), *partconfig = ((void*)0);

 while (input != ((void*)0) && *input != 0) {
  if (isspace(*input)) {
   input++;
   continue;
  }

  switch(*input) {
  case '{':
   input++;
   partconfig = strchr(input, '}');
   if (partconfig == ((void*)0)) {
    fprintf(stderr, "Malformed partition setup "
        "string: %s\n", input);
    return (1);
   }
   *partconfig = '\0';
   ap = partconfig+1;
   partconfig = input;
   input = ap;
   break;
  default:
   if (disk == ((void*)0))
    disk = strsep(&input, " \t\n");
   else if (scheme == ((void*)0))
    scheme = strsep(&input, " \t\n");
   else {
    fprintf(stderr, "Unknown directive: %s\n",
        strsep(&input, " \t\n"));
    return (1);
   }
  }
 } while (input != ((void*)0) && *input != 0);

 if (disk != ((void*)0))
  return (part_config(disk, scheme, partconfig));

 return (0);
}
