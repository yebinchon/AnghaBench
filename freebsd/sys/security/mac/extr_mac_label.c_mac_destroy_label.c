
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int l_flags; } ;


 int KASSERT (int,char*) ;
 int MAC_FLAG_INITIALIZED ;
 int bzero (struct label*,int) ;

void
mac_destroy_label(struct label *label)
{

 KASSERT(label->l_flags & MAC_FLAG_INITIALIZED,
     ("destroying uninitialized label"));




 label->l_flags &= ~MAC_FLAG_INITIALIZED;

}
