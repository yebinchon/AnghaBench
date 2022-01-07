
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostlist {scalar_t__ ht_flag; struct hostlist* ht_next; } ;


 scalar_t__ malloc (int) ;
 int out_of_mem () ;

__attribute__((used)) static struct hostlist *
get_ht(void)
{
 struct hostlist *hp;

 hp = (struct hostlist *)malloc(sizeof (struct hostlist));
 if (hp == (struct hostlist *)((void*)0))
  out_of_mem();
 hp->ht_next = (struct hostlist *)((void*)0);
 hp->ht_flag = 0;
 return (hp);
}
