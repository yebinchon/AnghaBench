
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 int printf (char*) ;
 int strlen (char*) ;

char *
snarf(char *linebuf, int *flag)
{
 char *cp;

 *flag = 1;
 cp = strlen(linebuf) + linebuf - 1;





 while (cp > linebuf && isspace((unsigned char)*cp))
  cp--;
 *++cp = '\0';





 while (cp > linebuf && !isspace((unsigned char)*cp))
  cp--;
 if (*cp == '\0') {
  printf("No file specified.\n");
  return (((void*)0));
 }
 if (isspace((unsigned char)*cp))
  *cp++ = '\0';
 else
  *flag = 0;
 return (cp);
}
