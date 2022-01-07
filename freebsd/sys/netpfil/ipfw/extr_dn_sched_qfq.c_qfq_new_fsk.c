
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * par; } ;
struct dn_fsk {TYPE_1__ fs; } ;


 int ND (char*,int ,int ) ;
 int QFQ_MAX_WEIGHT ;
 int ipdn_bound_var (int *,int,int,int,char*) ;

__attribute__((used)) static int
qfq_new_fsk(struct dn_fsk *f)
{
 ipdn_bound_var(&f->fs.par[0], 1, 1, QFQ_MAX_WEIGHT, "qfq weight");
 ipdn_bound_var(&f->fs.par[1], 1500, 1, 2000, "qfq maxlen");
 ND("weight %d len %d\n", f->fs.par[0], f->fs.par[1]);
 return 0;
}
