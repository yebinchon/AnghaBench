
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {int dummy; } ;



__attribute__((used)) static int
badfo_poll(struct file *fp, int events, struct ucred *active_cred,
    struct thread *td)
{

 return (0);
}
