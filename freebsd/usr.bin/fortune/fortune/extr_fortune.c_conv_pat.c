
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ islower (unsigned char) ;
 scalar_t__ isupper (unsigned char) ;
 char* malloc (unsigned int) ;
 int stderr ;
 int tolower (unsigned char) ;
 int toupper (unsigned char) ;

__attribute__((used)) static char *
conv_pat(char *orig)
{
 char *sp;
 unsigned int cnt;
 char *new;

 cnt = 1;
 for (sp = orig; *sp != '\0'; sp++)
  if (isalpha((unsigned char)*sp))
   cnt += 4;
  else
   cnt++;
 if ((new = malloc(cnt)) == ((void*)0)) {
  fprintf(stderr, "pattern too long for ignoring case\n");
  exit(1);
 }

 for (sp = new; *orig != '\0'; orig++) {
  if (islower((unsigned char)*orig)) {
   *sp++ = '[';
   *sp++ = *orig;
   *sp++ = toupper((unsigned char)*orig);
   *sp++ = ']';
  }
  else if (isupper((unsigned char)*orig)) {
   *sp++ = '[';
   *sp++ = *orig;
   *sp++ = tolower((unsigned char)*orig);
   *sp++ = ']';
  }
  else
   *sp++ = *orig;
 }
 *sp = '\0';

 return (new);
}
