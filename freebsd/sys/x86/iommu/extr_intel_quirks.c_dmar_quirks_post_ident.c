
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int dummy; } ;


 int dmar_match_quirks (struct dmar_unit*,int *,int ,int ,int ) ;
 int nitems (int ) ;
 int post_ident_cpu ;

void
dmar_quirks_post_ident(struct dmar_unit *dmar)
{

 dmar_match_quirks(dmar, ((void*)0), 0, post_ident_cpu,
     nitems(post_ident_cpu));
}
