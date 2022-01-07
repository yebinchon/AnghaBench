
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_blksize; } ;
struct TYPE_2__ {int sb_hiwat; } ;
struct socket {TYPE_1__ so_snd; } ;



int
pru_sense_null(struct socket *so, struct stat *sb)
{

 sb->st_blksize = so->so_snd.sb_hiwat;
 return 0;
}
