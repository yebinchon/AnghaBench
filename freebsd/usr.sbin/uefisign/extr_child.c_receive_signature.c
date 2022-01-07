
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct executable {int x_signature_len; int x_signature; } ;


 int receive_chunk (int *,int *,int) ;

__attribute__((used)) static void
receive_signature(struct executable *x, int pipefd)
{

 receive_chunk(&x->x_signature, &x->x_signature_len, pipefd);
}
