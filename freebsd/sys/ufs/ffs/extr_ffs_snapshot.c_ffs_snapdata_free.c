
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapdata {int dummy; } ;


 int LIST_INSERT_HEAD (int *,struct snapdata*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sn_link ;
 int snapfree ;
 int snapfree_lock ;

__attribute__((used)) static void
ffs_snapdata_free(struct snapdata *sn)
{
 mtx_lock(&snapfree_lock);
 LIST_INSERT_HEAD(&snapfree, sn, sn_link);
 mtx_unlock(&snapfree_lock);
}
