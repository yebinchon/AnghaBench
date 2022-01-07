
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdar {int dummy; } ;


 int write_archive (struct bsdar*,char) ;

void
ar_mode_m(struct bsdar *bsdar)
{

 write_archive(bsdar, 'm');
}
