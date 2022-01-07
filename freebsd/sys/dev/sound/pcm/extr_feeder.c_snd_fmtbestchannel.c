
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int snd_fmtbestfunc (int ,int *,int) ;

u_int32_t
snd_fmtbestchannel(u_int32_t fmt, u_int32_t *fmts)
{
 return snd_fmtbestfunc(fmt, fmts, 1);
}
