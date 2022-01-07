
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostlist {struct hostlist* ht_next; } ;
typedef int caddr_t ;


 int free (int ) ;

__attribute__((used)) static void
free_host(struct hostlist *hp)
{
 struct hostlist *hp2;

 while (hp) {
  hp2 = hp;
  hp = hp->ht_next;
  free((caddr_t)hp2);
 }
}
