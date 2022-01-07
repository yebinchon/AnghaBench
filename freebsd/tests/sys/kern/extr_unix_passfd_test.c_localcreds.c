
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int socklen_t ;


 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int LOCAL_CREDS ;
 int errno ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int strerror (int ) ;

__attribute__((used)) static bool
localcreds(int sockfd)
{
 socklen_t sz;
 int rc, val;

 sz = sizeof(val);
 rc = getsockopt(sockfd, 0, LOCAL_CREDS, &val, &sz);
 ATF_REQUIRE_MSG(rc != -1, "getsockopt(LOCAL_CREDS) failed: %s",
     strerror(errno));
 return (val != 0);
}
