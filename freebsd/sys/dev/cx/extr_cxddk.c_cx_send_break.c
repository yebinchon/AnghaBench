
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cx_chan_t ;


 int cx_send (int *,unsigned char*,int,int ) ;

void cx_send_break (cx_chan_t *c, int msec)
{
 static unsigned char buf [128];
 unsigned char *p;

 p = buf;
 *p++ = 0;
 *p++ = 0x81;

 if (msec > 10000)
  msec = 10000;
 if (msec < 10)
  msec = 10;
 while (msec > 0) {
  int ms = 250;
  if (ms > msec)
   ms = msec;
  msec -= ms;
  *p++ = 0;
  *p++ = 0x82;
  *p++ = ms;
 }
 *p++ = 0;
 *p++ = 0x83;

 cx_send (c, buf, p-buf, 0);
}
