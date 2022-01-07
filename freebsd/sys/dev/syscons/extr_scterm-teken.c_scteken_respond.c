
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scr_stat ;


 int sc_respond (int *,void const*,size_t,int ) ;

__attribute__((used)) static void
scteken_respond(void *arg, const void *buf, size_t len)
{
 scr_stat *scp = arg;

 sc_respond(scp, buf, len, 0);
}
