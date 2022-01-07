
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct clip_entry {int refcount; } ;
struct adapter {int clip_table_lock; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct clip_entry* search_lip (struct adapter*,struct in6_addr*) ;

struct clip_entry *
t4_hold_lip(struct adapter *sc, struct in6_addr *lip, struct clip_entry *ce)
{
 return (((void*)0));

}
