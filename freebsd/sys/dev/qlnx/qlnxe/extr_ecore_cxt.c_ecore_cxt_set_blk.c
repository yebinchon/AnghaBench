
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ilt_cli_blk {scalar_t__ total_size; } ;



__attribute__((used)) static struct ecore_ilt_cli_blk *
ecore_cxt_set_blk(struct ecore_ilt_cli_blk *p_blk)
{
 p_blk->total_size = 0;
 return p_blk;
}
