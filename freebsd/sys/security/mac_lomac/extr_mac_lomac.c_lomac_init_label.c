
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int M_WAITOK ;
 int SLOT_SET (struct label*,int ) ;
 int lomac_alloc (int ) ;

__attribute__((used)) static void
lomac_init_label(struct label *label)
{

 SLOT_SET(label, lomac_alloc(M_WAITOK));
}
