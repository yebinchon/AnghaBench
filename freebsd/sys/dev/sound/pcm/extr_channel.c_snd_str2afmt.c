
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int b2 ;
typedef int b1 ;
struct TYPE_2__ {char* name; char* alias1; char* alias2; int afmt; } ;


 int AFMT_CHANNEL_MAX ;
 int AFMT_EXTCHANNEL_MAX ;
 int SND_FORMAT (int ,int,int) ;
 TYPE_1__* afmt_tab ;
 int memset (char*,int ,int) ;
 int sscanf (char const*,char*,...) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strlen (char const*) ;

uint32_t
snd_str2afmt(const char *req)
{
 int ext;
 int ch;
 int i;
 char b1[8];
 char b2[8];

 memset(b1, 0, sizeof(b1));
 memset(b2, 0, sizeof(b2));

 i = sscanf(req, "%5[^:]:%6s", b1, b2);

 if (i == 1) {
  if (strlen(req) != strlen(b1))
   return (0);
  strlcpy(b2, "2.0", sizeof(b2));
 } else if (i == 2) {
  if (strlen(req) != (strlen(b1) + 1 + strlen(b2)))
   return (0);
 } else
  return (0);

 i = sscanf(b2, "%d.%d", &ch, &ext);

 if (i == 0) {
  if (strcasecmp(b2, "mono") == 0) {
   ch = 1;
   ext = 0;
  } else if (strcasecmp(b2, "stereo") == 0) {
   ch = 2;
   ext = 0;
  } else if (strcasecmp(b2, "quad") == 0) {
   ch = 4;
   ext = 0;
  } else
   return (0);
 } else if (i == 1) {
  if (ch < 1 || ch > AFMT_CHANNEL_MAX)
   return (0);
  ext = 0;
 } else if (i == 2) {
  if (ext < 0 || ext > AFMT_EXTCHANNEL_MAX)
   return (0);
  if (ch < 1 || (ch + ext) > AFMT_CHANNEL_MAX)
   return (0);
 } else
  return (0);

 for (i = 0; afmt_tab[i].name != ((void*)0); i++) {
  if (strcasecmp(afmt_tab[i].name, b1) != 0) {
   if (afmt_tab[i].alias1 == ((void*)0))
    continue;
   if (strcasecmp(afmt_tab[i].alias1, b1) != 0) {
    if (afmt_tab[i].alias2 == ((void*)0))
     continue;
    if (strcasecmp(afmt_tab[i].alias2, b1) != 0)
     continue;
   }
  }

  return (SND_FORMAT(afmt_tab[i].afmt, ch + ext, ext));
 }

 return (0);
}
