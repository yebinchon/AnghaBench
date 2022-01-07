
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int SLOT (struct label*) ;
 int SLOT_SET (struct label*,int *) ;
 int lomac_free (int ) ;

__attribute__((used)) static void
lomac_destroy_label(struct label *label)
{

 lomac_free(SLOT(label));
 SLOT_SET(label, ((void*)0));
}
