
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ber {int fd; } ;
typedef int ssize_t ;


 int ber_readbuf (struct ber*,int *,int) ;
 int read (int,int *,int) ;

__attribute__((used)) static ssize_t
ber_getc(struct ber *b, u_char *c)
{
 ssize_t r;





 if (b->fd == -1)
  r = ber_readbuf(b, c, 1);
 else
  r = read(b->fd, c, 1);
 return r;
}
