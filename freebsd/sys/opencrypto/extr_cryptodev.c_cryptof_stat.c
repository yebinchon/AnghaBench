
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct stat {int dummy; } ;
struct file {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
cryptof_stat(
 struct file *fp,
 struct stat *sb,
 struct ucred *active_cred,
 struct thread *td)
{

 return (EOPNOTSUPP);
}
