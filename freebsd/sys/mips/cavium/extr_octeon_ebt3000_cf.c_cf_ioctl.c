
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct g_provider {int dummy; } ;



__attribute__((used)) static int cf_ioctl (struct g_provider *pp, u_long cmd, void *data, int fflag, struct thread *td)
{
 return (0);
}
