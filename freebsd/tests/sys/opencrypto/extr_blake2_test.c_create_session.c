
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session2_op {int mac; size_t mackeylen; int crid; int ses; void const* mackey; } ;
typedef int sop ;


 int ATF_REQUIRE_MSG (int,char*,int,size_t,int ,int ) ;
 int CIOCGSESSION2 ;
 int errno ;
 scalar_t__ ioctl (int,int ,struct session2_op*) ;
 int memset (struct session2_op*,int ,int) ;
 int strerror (int ) ;

__attribute__((used)) static int
create_session(int fd, int alg, int crid, const void *key, size_t klen)
{
 struct session2_op sop;

 memset(&sop, 0, sizeof(sop));

 sop.mac = alg;
 sop.mackey = key;
 sop.mackeylen = klen;
 sop.crid = crid;

 ATF_REQUIRE_MSG(ioctl(fd, CIOCGSESSION2, &sop) >= 0,
     "alg %d keylen %zu, errno=%d (%s)", alg, klen, errno,
     strerror(errno));
 return (sop.ses);
}
