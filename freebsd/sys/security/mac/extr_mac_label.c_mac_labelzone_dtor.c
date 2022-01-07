
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int KASSERT (int,char*) ;
 int mac_destroy_label (struct label*) ;

__attribute__((used)) static void
mac_labelzone_dtor(void *mem, int size, void *arg)
{
 struct label *label;

 KASSERT(size == sizeof(*label), ("mac_labelzone_dtor: wrong size\n"));
 label = mem;
 mac_destroy_label(label);
}
