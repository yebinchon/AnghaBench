
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int dummy; } ;


 int M_LOMAC ;
 int M_ZERO ;
 struct mac_lomac* malloc (int,int ,int) ;

__attribute__((used)) static struct mac_lomac *
lomac_alloc(int flag)
{
 struct mac_lomac *ml;

 ml = malloc(sizeof(*ml), M_LOMAC, M_ZERO | flag);

 return (ml);
}
