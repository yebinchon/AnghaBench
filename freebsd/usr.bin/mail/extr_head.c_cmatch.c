
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (unsigned char) ;
 int islower (unsigned char) ;
 int ispunct (unsigned char) ;
 int isupper (unsigned char) ;

int
cmatch(char *cp, char *tp)
{

 while (*cp != '\0' && *tp != '\0')
  switch (*tp++) {
  case 'a':
   if (!islower((unsigned char)*cp++))
    return (0);
   break;
  case 'A':
   if (!isupper((unsigned char)*cp++))
    return (0);
   break;
  case ' ':
   if (*cp++ != ' ')
    return (0);
   break;
  case '0':
   if (!isdigit((unsigned char)*cp++))
    return (0);
   break;
  case 'O':
   if (*cp != ' ' && !isdigit((unsigned char)*cp))
    return (0);
   cp++;
   break;
  case 'p':
   if (!ispunct((unsigned char)*cp++))
    return (0);
   break;
  case 'P':
   if (*cp != ' ' && !ispunct((unsigned char)*cp))
    return (0);
   cp++;
   break;
  case ':':
   if (*cp++ != ':')
    return (0);
   break;
  case 'N':
   if (*cp++ != '\n')
    return (0);
   break;
  }
 if (*cp != '\0' || *tp != '\0')
  return (0);
 return (1);
}
