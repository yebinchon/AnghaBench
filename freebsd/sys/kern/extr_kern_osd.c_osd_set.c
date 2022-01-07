
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct osd {int dummy; } ;


 int osd_set_reserved (int ,struct osd*,int ,int *,void*) ;

int
osd_set(u_int type, struct osd *osd, u_int slot, void *value)
{

 return (osd_set_reserved(type, osd, slot, ((void*)0), value));
}
