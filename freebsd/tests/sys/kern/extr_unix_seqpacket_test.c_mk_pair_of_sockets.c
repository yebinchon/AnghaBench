
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sun ;
struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;


 int AF_LOCAL ;
 int ATF_CHECK_EQ (int ,int) ;
 int ATF_REQUIRE (int) ;
 int PF_LOCAL ;
 int SOCK_SEQPACKET ;
 int accept (int,int *,int *) ;
 int atf_tc_fail (char*) ;
 int bind (int,struct sockaddr*,int) ;
 int bzero (struct sockaddr_un*,int) ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int listen (int,int) ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static const char*
mk_pair_of_sockets(int *sv)
{
 struct sockaddr_un sun;

 const char *path = "sock";
 int s, err, s2, s1;

 s = socket(PF_LOCAL, SOCK_SEQPACKET, 0);
 ATF_REQUIRE(s >= 0);

 bzero(&sun, sizeof(sun));
 sun.sun_family = AF_LOCAL;
 sun.sun_len = sizeof(sun);
 strlcpy(sun.sun_path, path, sizeof(sun.sun_path));
 err = bind(s, (struct sockaddr *)&sun, sizeof(sun));
 err = listen(s, -1);
 ATF_CHECK_EQ(0, err);


 s2 = socket(PF_LOCAL, SOCK_SEQPACKET, 0);
 ATF_REQUIRE(s2 >= 0);
 err = connect(s2, (struct sockaddr*)&sun, sizeof(sun));
 if (err != 0) {
  perror("connect");
  atf_tc_fail("connect(2) failed");
 }


 s1 = accept(s, ((void*)0), ((void*)0));
 if (s1 == -1) {
  perror("accept");
  atf_tc_fail("accept(2) failed");
 }

 sv[0] = s1;
 sv[1] = s2;

 close(s);

 return (path);
}
