
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unittype {int quantity; double factor; double offset; int denominator; int numerator; } ;


 scalar_t__ addsubunit (int ,char*) ;
 double atof (char*) ;
 char* dupstr (char const*) ;
 int free (char*) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 char* strtok (char*,char*) ;
 char tolower (char) ;
 int zeroerror () ;

__attribute__((used)) static int
addunit(struct unittype * theunit, const char *toadd, int flip, int quantity)
{
 char *scratch, *savescr;
 char *item;
 char *divider, *slash, *offset;
 int doingtop;

 if (!strlen(toadd))
  return 1;

 savescr = scratch = dupstr(toadd);
 for (slash = scratch + 1; *slash; slash++)
  if (*slash == '-' &&
      (tolower(*(slash - 1)) != 'e' ||
      !strchr(".0123456789", *(slash + 1))))
   *slash = ' ';
 slash = strchr(scratch, '/');
 if (slash)
  *slash = 0;
 doingtop = 1;
 do {
  item = strtok(scratch, " *\t\n/");
  while (item) {
   if (strchr("0123456789.", *item)) {
    double num, offsetnum;

    if (quantity)
     theunit->quantity = 1;

    offset = strchr(item, '&');
    if (offset) {
     *offset = 0;
     offsetnum = atof(offset+1);
    } else
     offsetnum = 0.0;

    divider = strchr(item, '|');
    if (divider) {
     *divider = 0;
     num = atof(item);
     if (!num) {
      zeroerror();
      free(savescr);
      return 1;
     }
     if (doingtop ^ flip) {
      theunit->factor *= num;
      theunit->offset *= num;
     } else {
      theunit->factor /= num;
      theunit->offset /= num;
     }
     num = atof(divider + 1);
     if (!num) {
      zeroerror();
      free(savescr);
      return 1;
     }
     if (doingtop ^ flip) {
      theunit->factor /= num;
      theunit->offset /= num;
     } else {
      theunit->factor *= num;
      theunit->offset *= num;
     }
    }
    else {
     num = atof(item);
     if (!num) {
      zeroerror();
      free(savescr);
      return 1;
     }
     if (doingtop ^ flip) {
      theunit->factor *= num;
      theunit->offset *= num;
     } else {
      theunit->factor /= num;
      theunit->offset /= num;
     }
    }
    if (doingtop ^ flip)
     theunit->offset += offsetnum;
   }
   else {
    int repeat = 1;

    if (strchr("23456789",
        item[strlen(item) - 1])) {
     repeat = item[strlen(item) - 1] - '0';
     item[strlen(item) - 1] = 0;
    }
    for (; repeat; repeat--) {
     if (addsubunit(doingtop ^ flip ? theunit->numerator : theunit->denominator, item)) {
      free(savescr);
      return 1;
     }
    }
   }
   item = strtok(((void*)0), " *\t/\n");
  }
  doingtop--;
  if (slash) {
   scratch = slash + 1;
  }
  else
   doingtop--;
 } while (doingtop >= 0);
 free(savescr);
 return 0;
}
