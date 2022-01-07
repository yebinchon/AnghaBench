
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threadinfo {int dummy; } ;


 int LIST_REMOVE (struct threadinfo*,int ) ;
 int entries ;
 int free (struct threadinfo*) ;

__attribute__((used)) static void
free_thread(struct threadinfo *t)
{

 LIST_REMOVE(t, entries);
 free(t);
}
