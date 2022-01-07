
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_MARGV ;
 scalar_t__ isspace (char) ;
 int margc ;
 char** margv ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
makeargv(char *line)
{
 char *cp;
 char **argp = margv;

 margc = 0;
 if ((cp = strchr(line, '\n')) != ((void*)0))
  *cp = '\0';
 for (cp = line; margc < MAX_MARGV - 1 && *cp != '\0';) {
  while (isspace(*cp))
   cp++;
  if (*cp == '\0')
   break;
  *argp++ = cp;
  margc += 1;
  while (*cp != '\0' && !isspace(*cp))
   cp++;
  if (*cp == '\0')
   break;
  *cp++ = '\0';
 }
 *argp++ = 0;
}
