
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct executable {int x_digest_len; int x_digest; } ;


 int send_chunk (int ,int ,int) ;

__attribute__((used)) static void
send_digest(const struct executable *x, int pipefd)
{

 send_chunk(x->x_digest, x->x_digest_len, pipefd);
}
