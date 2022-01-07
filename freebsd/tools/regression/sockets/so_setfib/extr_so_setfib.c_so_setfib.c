
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
typedef int i ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;


 scalar_t__ EINVAL ;
 int SOL_SOCKET ;
 int SO_SETFIB ;
 scalar_t__ errno ;
 int printf (char*,int,char*,char*,int,...) ;
 int rt_numfibs ;
 int setsockopt (int,int ,int ,int*,int) ;
 char* strerror (scalar_t__) ;
 TYPE_2__* t_dom ;
 TYPE_1__* t_type ;
 int testno ;

__attribute__((used)) static void
so_setfib(int s, int i, u_int dom, u_int type)
{
 int error;

 error = setsockopt(s, SOL_SOCKET, SO_SETFIB, &i, sizeof(i));

 if (error == -1 && (i < 0 || i > rt_numfibs))
  printf("ok %d %s_%s_%d\n", testno, t_dom[dom].name,
      t_type[type].name, i);
 else if (error != -1 && (i < 0 || i > rt_numfibs))
  printf("not ok %d %s_%s_%d # setsockopt(%d, SOL_SOCKET, "
      "SO_SETFIB, %d, ..) unexpectedly succeeded\n", testno,
      t_dom[dom].name, t_type[type].name, i, s, i);
 else if (error == 0)
  printf("ok %d %s_%s_%d\n", testno, t_dom[dom].name,
      t_type[type].name, i);
 else if (errno != EINVAL)
  printf("not ok %d %s_%s_%d # setsockopt(%d, SOL_SOCKET, "
      "SO_SETFIB, %d, ..) unexpected error: %s\n", testno,
      t_dom[dom].name, t_type[type].name, i, s, i,
      strerror(errno));
 else
  printf("not ok %d %s_%s_%d\n", testno, t_dom[dom].name,
      t_type[type].name, i);


 testno++;
}
