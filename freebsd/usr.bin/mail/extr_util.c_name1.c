
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int dummy; } ;
typedef int namebuf ;
typedef int FILE ;


 int LINESIZE ;
 char* hfield (char*,struct message*) ;
 scalar_t__ readline (int *,char*,int) ;
 char* savestr (char*) ;
 int * setinput (struct message*) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;

char *
name1(struct message *mp, int reptype)
{
 char namebuf[LINESIZE];
 char linebuf[LINESIZE];
 char *cp, *cp2;
 FILE *ibuf;
 int first = 1;

 if ((cp = hfield("from", mp)) != ((void*)0))
  return (cp);
 if (reptype == 0 && (cp = hfield("sender", mp)) != ((void*)0))
  return (cp);
 ibuf = setinput(mp);
 namebuf[0] = '\0';
 if (readline(ibuf, linebuf, LINESIZE) < 0)
  return (savestr(namebuf));
newname:
 for (cp = linebuf; *cp != '\0' && *cp != ' '; cp++)
  ;
 for (; *cp == ' ' || *cp == '\t'; cp++)
  ;
 for (cp2 = &namebuf[strlen(namebuf)];
     *cp != '\0' && *cp != ' ' && *cp != '\t' &&
     cp2 < namebuf + LINESIZE - 1;)
  *cp2++ = *cp++;
 *cp2 = '\0';
 if (readline(ibuf, linebuf, LINESIZE) < 0)
  return (savestr(namebuf));
 if ((cp = strchr(linebuf, 'F')) == ((void*)0))
  return (savestr(namebuf));
 if (strncmp(cp, "From", 4) != 0)
  return (savestr(namebuf));
 while ((cp = strchr(cp, 'r')) != ((void*)0)) {
  if (strncmp(cp, "remote", 6) == 0) {
   if ((cp = strchr(cp, 'f')) == ((void*)0))
    break;
   if (strncmp(cp, "from", 4) != 0)
    break;
   if ((cp = strchr(cp, ' ')) == ((void*)0))
    break;
   cp++;
   if (first) {
    cp2 = namebuf;
    first = 0;
   } else
    cp2 = strrchr(namebuf, '!') + 1;
   strlcpy(cp2, cp, sizeof(namebuf) - (cp2 - namebuf) - 1);
   strcat(namebuf, "!");
   goto newname;
  }
  cp++;
 }
 return (savestr(namebuf));
}
