
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdaa_devinfo {TYPE_1__* chans; struct hdaa_audio_as* as; } ;
struct hdaa_audio_as {size_t* chans; scalar_t__ hpredir; int pinset; } ;
struct TYPE_2__ {int channels; } ;


 int snprintf (char*,int,char*,...) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static void
hdaa_chan_formula(struct hdaa_devinfo *devinfo, int asid,
    char *buf, int buflen)
{
 struct hdaa_audio_as *as;
 int c;

 as = &devinfo->as[asid];
 c = devinfo->chans[as->chans[0]].channels;
 if (c == 1)
  snprintf(buf, buflen, "mono");
 else if (c == 2) {
  if (as->hpredir < 0)
   buf[0] = 0;
  else
   snprintf(buf, buflen, "2.0");
 } else if (as->pinset == 0x0003)
  snprintf(buf, buflen, "3.1");
 else if (as->pinset == 0x0005 || as->pinset == 0x0011)
  snprintf(buf, buflen, "4.0");
 else if (as->pinset == 0x0007 || as->pinset == 0x0013)
  snprintf(buf, buflen, "5.1");
 else if (as->pinset == 0x0017)
  snprintf(buf, buflen, "7.1");
 else
  snprintf(buf, buflen, "%dch", c);
 if (as->hpredir >= 0)
  strlcat(buf, "+HP", buflen);
}
