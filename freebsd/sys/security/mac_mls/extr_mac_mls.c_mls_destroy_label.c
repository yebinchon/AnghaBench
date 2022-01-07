
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int SLOT (struct label*) ;
 int SLOT_SET (struct label*,int *) ;
 int mls_free (int ) ;

__attribute__((used)) static void
mls_destroy_label(struct label *label)
{

 mls_free(SLOT(label));
 SLOT_SET(label, ((void*)0));
}
