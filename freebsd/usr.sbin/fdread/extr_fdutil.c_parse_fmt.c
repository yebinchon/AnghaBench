
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_type {int sectrac; int secsize; int datalen; int gap; int tracks; int heads; int f_gap; int f_inter; int offset_side2; int size; int flags; void* trans; } ;
typedef enum fd_drivetype { ____Placeholder_fd_drivetype } fd_drivetype ;


 int EX_USAGE ;
 void* FDC_1MBPS ;
 void* FDC_250KBPS ;
 void* FDC_300KBPS ;
 void* FDC_500KBPS ;





 int FL_2STEP ;
 int FL_AUTO ;
 int FL_MFM ;
 int FL_PERPND ;
 int abort () ;
 int errx (int ,char*,...) ;
 int free (char*) ;
 int getnum (char*,int*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;
 int strcmp (char*,char*) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char*) ;

void
parse_fmt(const char *s, enum fd_drivetype type,
   struct fd_type in, struct fd_type *out)
{
 int i, j;
 const char *cp;
 char *s1;

 *out = in;

 for (i = 0;; i++) {
  if (s == ((void*)0))
   break;

  if ((cp = strchr(s, ',')) == ((void*)0)) {
   s1 = strdup(s);
   if (s1 == ((void*)0))
    abort();
   s = 0;
  } else {
   s1 = malloc(cp - s + 1);
   if (s1 == ((void*)0))
    abort();
   memcpy(s1, s, cp - s);
   s1[cp - s] = 0;

   s = cp + 1;
  }
  if (strlen(s1) == 0) {
   free(s1);
   continue;
  }

  switch (i) {
  case 0:
   if (getnum(s1, &out->sectrac))
    errx(EX_USAGE,
         "bad numeric value for sectrac: %s", s1);
   break;

  case 1:
   if (getnum(s1, &j))
    errx(EX_USAGE,
         "bad numeric value for secsize: %s", s1);
   if (j == 128) out->secsize = 0;
   else if (j == 256) out->secsize = 1;
   else if (j == 512) out->secsize = 2;
   else if (j == 1024) out->secsize = 3;
   else
    errx(EX_USAGE, "bad sector size %d", j);
   break;

  case 2:
   if (getnum(s1, &j))
    errx(EX_USAGE,
         "bad numeric value for datalen: %s", s1);
   if (j >= 256)
    errx(EX_USAGE, "bad datalen %d", j);
   out->datalen = j;
   break;

  case 3:
   if (getnum(s1, &out->gap))
    errx(EX_USAGE,
         "bad numeric value for gap: %s", s1);
   break;

  case 4:
   if (getnum(s1, &j))
    errx(EX_USAGE,
         "bad numeric value for ncyls: %s", s1);
   if (j > 85)
    errx(EX_USAGE, "bad # of cylinders %d", j);
   out->tracks = j;
   break;

  case 5:
   if (getnum(s1, &j))
    errx(EX_USAGE,
         "bad numeric value for speed: %s", s1);
   switch (type) {
   default:
    abort();

   case 129:
   case 128:
    if (j == 250)
     out->trans = FDC_250KBPS;
    else
     errx(EX_USAGE, "bad speed %d", j);
    break;

   case 132:
    if (j == 300)
     out->trans = FDC_300KBPS;
    else if (j == 250)
     out->trans = FDC_250KBPS;
    else if (j == 500)
     out->trans = FDC_500KBPS;
    else
     errx(EX_USAGE, "bad speed %d", j);
    break;

   case 130:
    if (j == 1000)
     out->trans = FDC_1MBPS;

   case 131:
    if (j == 250)
     out->trans = FDC_250KBPS;
    else if (j == 500)
     out->trans = FDC_500KBPS;
    else
     errx(EX_USAGE, "bad speed %d", j);
    break;
   }
   break;

  case 6:
   if (getnum(s1, &j))
    errx(EX_USAGE,
         "bad numeric value for heads: %s", s1);
   if (j == 1 || j == 2)
    out->heads = j;
   else
    errx(EX_USAGE, "bad # of heads %d", j);
   break;

  case 7:
   if (getnum(s1, &out->f_gap))
    errx(EX_USAGE,
         "bad numeric value for f_gap: %s", s1);
   break;

  case 8:
   if (getnum(s1, &out->f_inter))
    errx(EX_USAGE,
         "bad numeric value for f_inter: %s", s1);
   break;

  case 9:
   if (getnum(s1, &out->offset_side2))
    errx(EX_USAGE,
         "bad numeric value for offs2: %s", s1);
   break;

  default:
   if (strcmp(s1, "+mfm") == 0)
    out->flags |= FL_MFM;
   else if (strcmp(s1, "-mfm") == 0)
    out->flags &= ~FL_MFM;
   else if (strcmp(s1, "+auto") == 0)
    out->flags |= FL_AUTO;
   else if (strcmp(s1, "-auto") == 0)
    out->flags &= ~FL_AUTO;
   else if (strcmp(s1, "+2step") == 0)
    out->flags |= FL_2STEP;
   else if (strcmp(s1, "-2step") == 0)
    out->flags &= ~FL_2STEP;
   else if (strcmp(s1, "+perpnd") == 0)
    out->flags |= FL_PERPND;
   else if (strcmp(s1, "-perpnd") == 0)
    out->flags &= ~FL_PERPND;
   else
    errx(EX_USAGE, "bad flag: %s", s1);
   break;
  }
  free(s1);
 }

 out->size = out->tracks * out->heads * out->sectrac;
}
