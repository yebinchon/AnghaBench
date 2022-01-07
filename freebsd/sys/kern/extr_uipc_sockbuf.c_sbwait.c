
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int sb_flags; int sb_timeo; int sb_mtx; int sb_acc; } ;


 int PCATCH ;
 int PSOCK ;
 int SB_NOINTR ;
 int SB_WAIT ;
 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 int msleep_sbt (int *,int *,int,char*,int ,int ,int ) ;

int
sbwait(struct sockbuf *sb)
{

 SOCKBUF_LOCK_ASSERT(sb);

 sb->sb_flags |= SB_WAIT;
 return (msleep_sbt(&sb->sb_acc, &sb->sb_mtx,
     (sb->sb_flags & SB_NOINTR) ? PSOCK : PSOCK | PCATCH, "sbwait",
     sb->sb_timeo, 0, 0));
}
