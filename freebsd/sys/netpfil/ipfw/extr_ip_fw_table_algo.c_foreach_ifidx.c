
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_ifidx {int arg; int (* f ) (struct ifentry*,int ) ;} ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
struct ifentry {int dummy; } ;


 int stub1 (struct ifentry*,int ) ;

__attribute__((used)) static int
foreach_ifidx(struct namedobj_instance *ii, struct named_object *no,
    void *arg)
{
 struct ifentry *ife;
 struct wa_ifidx *wa;

 ife = (struct ifentry *)no;
 wa = (struct wa_ifidx *)arg;

 wa->f(ife, wa->arg);
 return (0);
}
