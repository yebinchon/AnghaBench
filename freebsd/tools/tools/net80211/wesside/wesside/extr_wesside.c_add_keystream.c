
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_frame {int dummy; } ;


 int PTW_addsession (int ,unsigned char*,unsigned char*) ;
 int known_clear (unsigned char*,struct ieee80211_frame*,int) ;
 int ptw ;

void add_keystream(struct ieee80211_frame* wh, int rd)
{
 unsigned char clear[1024];
 int dlen = rd - sizeof(struct ieee80211_frame) - 4 - 4;
 int clearsize;
 unsigned char *body = (unsigned char*) (wh+1);
 int i;

 clearsize = known_clear(clear, wh, dlen);
 if (clearsize < 16)
  return;

 for (i = 0; i < 16; i++)
  clear[i] ^= body[4+i];

 PTW_addsession(ptw, body, clear);
}
