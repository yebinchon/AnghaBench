
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lex {char l_char; int l_token; } ;


 int STRINGLEN ;
 int TEOL ;
 int TERROR ;
 int TNUMBER ;
 int TSTRING ;
 int fprintf (int ,char*,int) ;
 scalar_t__ isdigit (unsigned char) ;
 int lexnumber ;
 char* lexstring ;
 int* numberstack ;
 size_t regretp ;
 int* regretstack ;
 struct lex* singles ;
 int stderr ;
 int strcpy (char*,int ) ;
 int * string_stack ;

int
scan(char **sp)
{
 char *cp, *cp2;
 int c;
 struct lex *lp;
 int quotec;

 if (regretp >= 0) {
  strcpy(lexstring, string_stack[regretp]);
  lexnumber = numberstack[regretp];
  return (regretstack[regretp--]);
 }
 cp = *sp;
 cp2 = lexstring;
 c = *cp++;





 while (c == ' ' || c == '\t')
  c = *cp++;






 if (c == '\0') {
  *sp = --cp;
  return (TEOL);
 }







 if (isdigit((unsigned char)c)) {
  lexnumber = 0;
  while (isdigit((unsigned char)c)) {
   lexnumber = lexnumber*10 + c - '0';
   *cp2++ = c;
   c = *cp++;
  }
  *cp2 = '\0';
  *sp = --cp;
  return (TNUMBER);
 }






 for (lp = &singles[0]; lp->l_char != '\0'; lp++)
  if (c == lp->l_char) {
   lexstring[0] = c;
   lexstring[1] = '\0';
   *sp = cp;
   return (lp->l_token);
  }
 quotec = 0;
 if (c == '\'' || c == '"') {
  quotec = c;
  c = *cp++;
 }
 while (c != '\0') {
  if (c == quotec) {
   cp++;
   break;
  }
  if (quotec == 0 && (c == ' ' || c == '\t'))
   break;
  if (cp2 - lexstring < STRINGLEN-1)
   *cp2++ = c;
  c = *cp++;
 }
 if (quotec && c == '\0') {
  fprintf(stderr, "Missing %c\n", quotec);
  return (TERROR);
 }
 *sp = --cp;
 *cp2 = '\0';
 return (TSTRING);
}
