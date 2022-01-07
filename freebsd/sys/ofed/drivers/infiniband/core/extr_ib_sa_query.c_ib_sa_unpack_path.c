
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sa_path_rec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ib_unpack (int ,int ,void*,struct ib_sa_path_rec*) ;
 int path_rec_table ;

void ib_sa_unpack_path(void *attribute, struct ib_sa_path_rec *rec)
{
 ib_unpack(path_rec_table, ARRAY_SIZE(path_rec_table), attribute, rec);
}
