
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct sock* next; struct sock* faddr; struct sock* laddr; } ;
struct addr {struct addr* next; struct addr* faddr; struct addr* laddr; } ;


 int free (struct sock*) ;

__attribute__((used)) static void
free_socket(struct sock *sock)
{
 struct addr *cur, *next;

 cur = sock->laddr;
 while (cur != ((void*)0)) {
  next = cur->next;
  free(cur);
  cur = next;
 }
 cur = sock->faddr;
 while (cur != ((void*)0)) {
  next = cur->next;
  free(cur);
  cur = next;
 }
 free(sock);
}
