
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitset {int dummy; } ;


 int BIT_SET (int,int,struct bitset*) ;
 int EXIT_FAILURE ;
 int atoi (char*) ;
 int errx (int ,char*,...) ;
 scalar_t__ isdigit (char) ;

__attribute__((used)) static void
parselist(char *list, struct bitset *mask, int size)
{
 enum { NONE, NUM, DASH } state;
 int lastnum;
 int curnum;
 char *l;

 state = NONE;
 curnum = lastnum = 0;
 for (l = list; *l != '\0';) {
  if (isdigit(*l)) {
   curnum = atoi(l);
   if (curnum >= size)
    errx(EXIT_FAILURE,
        "List entry %d exceeds maximum of %d",
        curnum, size - 1);
   while (isdigit(*l))
    l++;
   switch (state) {
   case NONE:
    lastnum = curnum;
    state = NUM;
    break;
   case DASH:
    for (; lastnum <= curnum; lastnum++)
     BIT_SET(size, lastnum, mask);
    state = NONE;
    break;
   case NUM:
   default:
    goto parserr;
   }
   continue;
  }
  switch (*l) {
  case ',':
   switch (state) {
   case NONE:
    break;
   case NUM:
    BIT_SET(size, curnum, mask);
    state = NONE;
    break;
   case DASH:
    goto parserr;
    break;
   }
   break;
  case '-':
   if (state != NUM)
    goto parserr;
   state = DASH;
   break;
  default:
   goto parserr;
  }
  l++;
 }
 switch (state) {
  case NONE:
   break;
  case NUM:
   BIT_SET(size, curnum, mask);
   break;
  case DASH:
   goto parserr;
 }
 return;
parserr:
 errx(EXIT_FAILURE, "Malformed list %s", list);
}
