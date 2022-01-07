
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NgSendData (int ,char const*,void const*,size_t) ;
 int dsock ;

int
ng_send_data(const char *hook, const void *sndbuf, size_t sndlen)
{
 return (NgSendData(dsock, hook, sndbuf, sndlen));
}
