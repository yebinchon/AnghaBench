
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpcb {int unp_ino; } ;
struct stat {int st_ino; int st_dev; int st_blksize; } ;
struct TYPE_2__ {int sb_hiwat; } ;
struct socket {TYPE_1__ so_snd; } ;


 int KASSERT (int ,char*) ;
 int NODEV ;
 struct unpcb* sotounpcb (struct socket*) ;

__attribute__((used)) static int
uipc_sense(struct socket *so, struct stat *sb)
{
 struct unpcb *unp;

 unp = sotounpcb(so);
 KASSERT(unp != ((void*)0), ("uipc_sense: unp == NULL"));

 sb->st_blksize = so->so_snd.sb_hiwat;
 sb->st_dev = NODEV;
 sb->st_ino = unp->unp_ino;
 return (0);
}
