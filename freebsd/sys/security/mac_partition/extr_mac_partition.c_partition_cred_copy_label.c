
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int SLOT (struct label*) ;
 int SLOT_SET (struct label*,int ) ;

__attribute__((used)) static void
partition_cred_copy_label(struct label *src, struct label *dest)
{

 if (src != ((void*)0) && dest != ((void*)0))
  SLOT_SET(dest, SLOT(src));
 else if (dest != ((void*)0))
  SLOT_SET(dest, 0);
}
