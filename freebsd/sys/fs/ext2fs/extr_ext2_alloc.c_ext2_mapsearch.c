
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_ext2fs {int e2fs_fsmnt; TYPE_1__* e2fs; } ;
typedef scalar_t__ daddr_t ;
struct TYPE_2__ {int e2fs_fpg; } ;


 int NBBY ;
 int dtogd (struct m_ext2fs*,scalar_t__) ;
 scalar_t__ ffs (char) ;
 int howmany (int ,int) ;
 char* memcchr (char*,int,int) ;
 int panic (char*,int,int,int ) ;

__attribute__((used)) static daddr_t
ext2_mapsearch(struct m_ext2fs *fs, char *bbp, daddr_t bpref)
{
 char *loc;
 int start, len;





 if (bpref)
  start = dtogd(fs, bpref) / NBBY;
 else
  start = 0;
 len = howmany(fs->e2fs->e2fs_fpg, NBBY) - start;
 loc = memcchr(&bbp[start], 0xff, len);
 if (loc == ((void*)0)) {
  len = start + 1;
  start = 0;
  loc = memcchr(&bbp[start], 0xff, len);
  if (loc == ((void*)0)) {
   panic("ext2_mapsearch: map corrupted: start=%d, len=%d, fs=%s",
       start, len, fs->e2fs_fsmnt);

  }
 }
 return ((loc - bbp) * NBBY + ffs(~*loc) - 1);
}
