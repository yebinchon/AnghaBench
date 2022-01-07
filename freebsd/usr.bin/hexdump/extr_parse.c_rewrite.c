
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ bcnt; TYPE_2__* nextfu; } ;
struct TYPE_8__ {unsigned char* fmt; int bcnt; int flags; scalar_t__ reps; TYPE_1__* nextpr; struct TYPE_8__* nextfu; } ;
struct TYPE_7__ {unsigned char* fmt; int flags; int bcnt; unsigned char* cchar; unsigned char* nospace; struct TYPE_7__* nextpr; } ;
typedef TYPE_1__ PR ;
typedef TYPE_2__ FU ;
typedef TYPE_3__ FS ;


 int F_ADDRESS ;
 int F_C ;
 int F_CHAR ;
 int F_DBL ;
 int F_IGNORE ;
 int F_INT ;
 int F_P ;
 int F_SETREP ;
 int F_STR ;
 int F_TEXT ;
 int F_U ;
 int F_UINT ;
 int asprintf (unsigned char**,char*,unsigned char*,char*) ;
 int atoi (unsigned char*) ;
 int badcnt (unsigned char*) ;
 int badconv (unsigned char*) ;
 int badnoconv () ;
 int badsfmt () ;
 scalar_t__ blocksize ;
 TYPE_1__* calloc (int,int) ;
 TYPE_2__* endfu ;
 int err (int,int *) ;
 int errx (int,char*) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 int printf (char*,...) ;
 scalar_t__ spec ;
 int * strchr (scalar_t__,unsigned char) ;

void
rewrite(FS *fs)
{
 enum { NOTOKAY, USEBCNT, USEPREC } sokay;
 PR *pr, **nextpr;
 FU *fu;
 unsigned char *p1, *p2, *fmtp;
 char savech, cs[3];
 int nconv, prec;

 prec = 0;

 for (fu = fs->nextfu; fu; fu = fu->nextfu) {




  nextpr = &fu->nextpr;
  for (nconv = 0, fmtp = fu->fmt; *fmtp; nextpr = &pr->nextpr) {
   if ((pr = calloc(1, sizeof(PR))) == ((void*)0))
    err(1, ((void*)0));
   *nextpr = pr;


   for (p1 = fmtp; *p1 && *p1 != '%'; ++p1);


   if (!*p1) {
    pr->fmt = fmtp;
    pr->flags = F_TEXT;
    break;
   }





   if (fu->bcnt) {
    sokay = USEBCNT;

    while (*++p1 != 0 && strchr(spec, *p1) != ((void*)0))
     ;
    if (*p1 == 0)
     badnoconv();
   } else {

    while (*++p1 != 0 && strchr(spec + 1, *p1) != ((void*)0))
     ;
    if (*p1 == 0)
     badnoconv();
    if (*p1 == '.' && isdigit(*++p1)) {
     sokay = USEPREC;
     prec = atoi(p1);
     while (isdigit(*++p1));
    } else
     sokay = NOTOKAY;
   }

   p2 = *p1 ? p1 + 1 : p1;


   cs[0] = *p1;
   cs[1] = '\0';






   switch(cs[0]) {
   case 'c':
    pr->flags = F_CHAR;
    switch(fu->bcnt) {
    case 0: case 1:
     pr->bcnt = 1;
     break;
    default:
     p1[1] = '\0';
     badcnt(p1);
    }
    break;
   case 'd': case 'i':
    pr->flags = F_INT;
    goto isint;
   case 'o': case 'u': case 'x': case 'X':
    pr->flags = F_UINT;
isint: cs[2] = '\0';
    cs[1] = cs[0];
    cs[0] = 'q';
    switch(fu->bcnt) {
    case 0: case 4:
     pr->bcnt = 4;
     break;
    case 1:
     pr->bcnt = 1;
     break;
    case 2:
     pr->bcnt = 2;
     break;
    default:
     p1[1] = '\0';
     badcnt(p1);
    }
    break;
   case 'e': case 'E': case 'f': case 'g': case 'G':
    pr->flags = F_DBL;
    switch(fu->bcnt) {
    case 0: case 8:
     pr->bcnt = 8;
     break;
    case 4:
     pr->bcnt = 4;
     break;
    default:
     if (fu->bcnt == sizeof(long double)) {
      cs[2] = '\0';
      cs[1] = cs[0];
      cs[0] = 'L';
      pr->bcnt = sizeof(long double);
     } else {
      p1[1] = '\0';
      badcnt(p1);
     }
    }
    break;
   case 's':
    pr->flags = F_STR;
    switch(sokay) {
    case NOTOKAY:
     badsfmt();
    case USEBCNT:
     pr->bcnt = fu->bcnt;
     break;
    case USEPREC:
     pr->bcnt = prec;
     break;
    }
    break;
   case '_':
    ++p2;
    switch(p1[1]) {
    case 'A':
     endfu = fu;
     fu->flags |= F_IGNORE;

    case 'a':
     pr->flags = F_ADDRESS;
     ++p2;
     switch(p1[2]) {
     case 'd': case 'o': case'x':
      cs[0] = 'q';
      cs[1] = p1[2];
      cs[2] = '\0';
      break;
     default:
      p1[3] = '\0';
      badconv(p1);
     }
     break;
    case 'c':
     pr->flags = F_C;

     goto isint2;
    case 'p':
     pr->flags = F_P;
     cs[0] = 'c';
     goto isint2;
    case 'u':
     pr->flags = F_U;

isint2: switch(fu->bcnt) {
     case 0: case 1:
      pr->bcnt = 1;
      break;
     default:
      p1[2] = '\0';
      badcnt(p1);
     }
     break;
    default:
     p1[2] = '\0';
     badconv(p1);
    }
    break;
   default:
    p1[1] = '\0';
    badconv(p1);
   }





   savech = *p2;
   p1[0] = '\0';
   if (asprintf(&pr->fmt, "%s%s", fmtp, cs) == -1)
    err(1, ((void*)0));
   *p2 = savech;
   pr->cchar = pr->fmt + (p1 - fmtp);
   fmtp = p2;


   if (!(pr->flags&F_ADDRESS) && fu->bcnt && nconv++)
     errx(1, "byte count with multiple conversion characters");
  }




  if (!fu->bcnt)
   for (pr = fu->nextpr; pr; pr = pr->nextpr)
    fu->bcnt += pr->bcnt;
 }
 for (fu = fs->nextfu; fu; fu = fu->nextfu) {
  if (!fu->nextfu && fs->bcnt < blocksize &&
      !(fu->flags&F_SETREP) && fu->bcnt)
   fu->reps += (blocksize - fs->bcnt) / fu->bcnt;
  if (fu->reps > 1) {
   for (pr = fu->nextpr;; pr = pr->nextpr)
    if (!pr->nextpr)
     break;
   for (p1 = pr->fmt, p2 = ((void*)0); *p1; ++p1)
    p2 = isspace(*p1) ? p1 : ((void*)0);
   if (p2)
    pr->nospace = p2;
  }
 }
}
