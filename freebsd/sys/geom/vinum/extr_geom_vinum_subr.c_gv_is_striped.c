
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_plex {int org; } ;




 int KASSERT (int ,char*) ;

int
gv_is_striped(struct gv_plex *p)
{
 KASSERT(p != ((void*)0), ("gv_is_striped: NULL p"));
 switch(p->org) {
 case 128:
 case 129:
  return (1);
 default:
  return (0);
 }
}
