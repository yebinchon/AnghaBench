
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct pcm_channel {int dummy; } ;
struct TYPE_2__ {int* fmtlist; } ;


 int AFMT_CONVERTIBLE ;
 int AFMT_ENCODING (int) ;
 int CHN_BITPERFECT (struct pcm_channel*) ;
 TYPE_1__* chn_getcaps (struct pcm_channel*) ;
 scalar_t__ report_soft_formats ;

u_int32_t
chn_getformats(struct pcm_channel *c)
{
 u_int32_t *fmtlist, fmts;
 int i;

 fmtlist = chn_getcaps(c)->fmtlist;
 fmts = 0;
 for (i = 0; fmtlist[i]; i++)
  fmts |= fmtlist[i];


 if (!CHN_BITPERFECT(c) && report_soft_formats)
  fmts |= AFMT_CONVERTIBLE;

 return (AFMT_ENCODING(fmts));
}
