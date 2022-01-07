
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {char* member_0; int member_1; int f_fd; int f_name; } ;
typedef int cap_rights_t ;
typedef int all ;


 int CAP_FCNTL ;
 int CAP_READ ;
 int CHECK_NOTCAPABLE (int (*) (int,int ,int ),int,int ,int ) ;
 int CHECK_SYSCALL_SUCCEEDS (int (*) (int,int ,int ),int,int ,int ) ;
 int FAIL (char*,int ) ;
 int F_GETFL ;
 int O_RDONLY ;
 int O_RDWR ;
 int PASSED ;
 int PF_LOCAL ;
 int REQUIRE (int) ;
 int SHM_ANON ;
 int SOCK_STREAM ;
 int cap_enter () ;
 int cap_new (int,int) ;
 int fcntl (int,int ,int ) ;
 int open (char*,int ) ;
 int shm_open (int ,int ,int) ;
 int socket (int ,int ,int ) ;

int
test_fcntl(void)
{
 int success = PASSED;
 cap_rights_t rights = CAP_READ | CAP_FCNTL;




 struct fd files[] = {
  { "file", open("/etc/passwd", O_RDONLY) },
  { "socket", socket(PF_LOCAL, SOCK_STREAM, 0) },
  { "SHM", shm_open(SHM_ANON, O_RDWR, 0600) },
 };
 REQUIRE(files[0].f_fd);
 REQUIRE(files[1].f_fd);
 REQUIRE(files[2].f_fd);

 struct fd caps[] = {
  { "file cap", cap_new(files[0].f_fd, rights) },
  { "socket cap", cap_new(files[1].f_fd, rights) },
  { "SHM cap", cap_new(files[2].f_fd, rights) },
 };
 REQUIRE(caps[0].f_fd);
 REQUIRE(caps[1].f_fd);
 REQUIRE(caps[2].f_fd);

 struct fd all[] = {
  files[0], caps[0],
  files[1], caps[1],
  files[2], caps[2],
 };
 const size_t len = sizeof(all) / sizeof(struct fd);

 REQUIRE(cap_enter());




 for (size_t i = 0; i < len; i++)
 {
  struct fd f = all[i];
  int cap;

  CHECK_SYSCALL_SUCCEEDS(fcntl, f.f_fd, F_GETFL, 0);
  REQUIRE(cap = cap_new(f.f_fd, CAP_READ));
  if (fcntl(f.f_fd, F_GETFL, 0) == -1)
   FAIL("Error calling fcntl('%s', F_GETFL)", f.f_name);
  else
   CHECK_NOTCAPABLE(fcntl, cap, F_GETFL, 0);
 }

 return (success);
}
