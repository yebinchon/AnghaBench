
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuple_list {int dummy; } ;


 struct tuple_list* read_tuples (int) ;

struct tuple_list *
readcis(int fd)
{

 return (read_tuples(fd));
}
