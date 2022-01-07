
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct au_chinfo {scalar_t__ dir; } ;
typedef int kobj_t ;


 scalar_t__ PCMDIR_PLAY ;
 int au_prepareoutput (struct au_chinfo*,int ) ;

__attribute__((used)) static int
auchan_setformat(kobj_t obj, void *data, u_int32_t format)
{
 struct au_chinfo *ch = data;

 if (ch->dir == PCMDIR_PLAY) au_prepareoutput(ch, format);
 return 0;
}
