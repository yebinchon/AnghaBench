
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {char* name; scalar_t__ afmt; } ;


 size_t AFMTSTR_LEN ;
 scalar_t__ AFMT_CHANNEL (scalar_t__) ;
 scalar_t__ AFMT_ENCODING (scalar_t__) ;
 scalar_t__ AFMT_EXTCHANNEL (scalar_t__) ;
 scalar_t__ SND_FORMAT (scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_1__* afmt_tab ;
 int memset (char*,int ,size_t) ;
 int snprintf (char*,size_t,char*,char*,scalar_t__,scalar_t__) ;

uint32_t
snd_afmt2str(uint32_t afmt, char *buf, size_t len)
{
 uint32_t enc;
 uint32_t ext;
 uint32_t ch;
 int i;

 if (buf == ((void*)0) || len < AFMTSTR_LEN)
  return (0);

 memset(buf, 0, len);

 enc = AFMT_ENCODING(afmt);
 ch = AFMT_CHANNEL(afmt);
 ext = AFMT_EXTCHANNEL(afmt);

 if (ch <= ext)
  return (0);
 for (i = 0; afmt_tab[i].name != ((void*)0); i++) {
  if (enc != afmt_tab[i].afmt)
   continue;

  snprintf(buf, len, "%s:%d.%d",
      afmt_tab[i].name, ch - ext, ext);
  return (SND_FORMAT(enc, ch, ext));
 }
 return (0);
}
