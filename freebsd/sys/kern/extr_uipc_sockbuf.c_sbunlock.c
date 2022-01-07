
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int sb_sx; } ;


 int sx_xunlock (int *) ;

void
sbunlock(struct sockbuf *sb)
{

 sx_xunlock(&sb->sb_sx);
}
