
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdar {int dummy; } ;


 int write_archive (struct bsdar*,char) ;

void
ar_mode_s(struct bsdar *bsdar)
{

 write_archive(bsdar, 's');
}
