
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tm {int tm_wday; int tm_mon; } ;
typedef int buf ;
struct TYPE_8__ {void* len; int * name; } ;
struct TYPE_7__ {void* len; int * name; } ;
struct TYPE_6__ {void* len; int * name; } ;
struct TYPE_5__ {void* len; int * name; } ;


 int errx (int,char*) ;
 TYPE_4__* fndays ;
 TYPE_3__* fnmonths ;
 int free (int *) ;
 scalar_t__ isspace (unsigned char) ;
 int memset (struct tm*,int ,int) ;
 TYPE_2__* ndays ;
 TYPE_1__* nmonths ;
 void* strdup (char*) ;
 int strftime (char*,int,char*,struct tm*) ;
 void* strlen (char*) ;

void
setnnames(void)
{
 char buf[80];
 int i, l;
 struct tm tm;

 memset(&tm, 0, sizeof(struct tm));
 for (i = 0; i < 7; i++) {
  tm.tm_wday = i;
  strftime(buf, sizeof(buf), "%a", &tm);
  for (l = strlen(buf);
       l > 0 && isspace((unsigned char)buf[l - 1]);
       l--)
   ;
  buf[l] = '\0';
  if (ndays[i].name != ((void*)0))
   free(ndays[i].name);
  if ((ndays[i].name = strdup(buf)) == ((void*)0))
   errx(1, "cannot allocate memory");
  ndays[i].len = strlen(buf);

  strftime(buf, sizeof(buf), "%A", &tm);
  for (l = strlen(buf);
       l > 0 && isspace((unsigned char)buf[l - 1]);
       l--)
   ;
  buf[l] = '\0';
  if (fndays[i].name != ((void*)0))
   free(fndays[i].name);
  if ((fndays[i].name = strdup(buf)) == ((void*)0))
   errx(1, "cannot allocate memory");
  fndays[i].len = strlen(buf);
 }

 memset(&tm, 0, sizeof(struct tm));
 for (i = 0; i < 12; i++) {
  tm.tm_mon = i;
  strftime(buf, sizeof(buf), "%b", &tm);
  for (l = strlen(buf);
       l > 0 && isspace((unsigned char)buf[l - 1]);
       l--)
   ;
  buf[l] = '\0';
  if (nmonths[i].name != ((void*)0))
   free(nmonths[i].name);
  if ((nmonths[i].name = strdup(buf)) == ((void*)0))
   errx(1, "cannot allocate memory");
  nmonths[i].len = strlen(buf);

  strftime(buf, sizeof(buf), "%B", &tm);
  for (l = strlen(buf);
       l > 0 && isspace((unsigned char)buf[l - 1]);
       l--)
   ;
  buf[l] = '\0';
  if (fnmonths[i].name != ((void*)0))
   free(fnmonths[i].name);
  if ((fnmonths[i].name = strdup(buf)) == ((void*)0))
   errx(1, "cannot allocate memory");
  fnmonths[i].len = strlen(buf);
 }
}
