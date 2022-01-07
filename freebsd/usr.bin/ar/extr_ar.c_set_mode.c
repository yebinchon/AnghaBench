
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdar {char mode; } ;


 int EX_USAGE ;
 int bsdar_errc (struct bsdar*,int ,int ,char*,char,char) ;

__attribute__((used)) static void
set_mode(struct bsdar *bsdar, char opt)
{

 if (bsdar->mode != '\0' && bsdar->mode != opt)
  bsdar_errc(bsdar, EX_USAGE, 0,
      "Can't specify both -%c and -%c", opt, bsdar->mode);
 bsdar->mode = opt;
}
