
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mqueue {int dummy; } ;
struct mqfs_node {int dummy; } ;
struct file {int dummy; } ;


 int _getmq (struct thread*,int,int *,int ,struct file**,struct mqfs_node**,struct mqueue**) ;
 int cap_read_rights ;
 int fget_read ;

__attribute__((used)) static __inline int
getmq_read(struct thread *td, int fd, struct file **fpp,
  struct mqfs_node **ppn, struct mqueue **pmq)
{

 return _getmq(td, fd, &cap_read_rights, fget_read,
     fpp, ppn, pmq);
}
