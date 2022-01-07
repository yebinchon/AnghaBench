
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mount {int dummy; } ;


 int vflush (struct mount*,int ,int,struct thread*) ;

__attribute__((used)) static int
ext2_flushfiles(struct mount *mp, int flags, struct thread *td)
{
 int error;

 error = vflush(mp, 0, flags, td);
 return (error);
}
