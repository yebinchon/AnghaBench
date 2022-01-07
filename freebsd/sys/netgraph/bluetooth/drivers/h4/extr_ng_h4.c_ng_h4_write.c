
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct tty {int dummy; } ;


 int EIO ;

__attribute__((used)) static int
ng_h4_write(struct tty *tp, struct uio *uio, int flag)
{
 return (EIO);
}
