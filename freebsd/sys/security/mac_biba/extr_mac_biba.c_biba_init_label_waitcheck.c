
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int ENOMEM ;
 int * SLOT (struct label*) ;
 int SLOT_SET (struct label*,int ) ;
 int biba_alloc (int) ;

__attribute__((used)) static int
biba_init_label_waitcheck(struct label *label, int flag)
{

 SLOT_SET(label, biba_alloc(flag));
 if (SLOT(label) == ((void*)0))
  return (ENOMEM);

 return (0);
}
