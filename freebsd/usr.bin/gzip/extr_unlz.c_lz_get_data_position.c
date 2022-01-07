
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lz_decoder {scalar_t__ pos; scalar_t__ ppos; } ;
typedef scalar_t__ off_t ;



__attribute__((used)) static off_t
lz_get_data_position(const struct lz_decoder *lz)
{
 return lz->ppos + lz->pos;
}
