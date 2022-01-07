
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_entry {int dummy; } ;


 struct tp_entry* TAILQ_FIRST (int *) ;
 int tp_entries ;

__attribute__((used)) static struct tp_entry *
bridge_addrs_first(void)
{
 return (TAILQ_FIRST(&tp_entries));
}
