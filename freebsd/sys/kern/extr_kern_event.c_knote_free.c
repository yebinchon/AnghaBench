
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;


 int knote_zone ;
 int uma_zfree (int ,struct knote*) ;

__attribute__((used)) static void
knote_free(struct knote *kn)
{

 uma_zfree(knote_zone, kn);
}
