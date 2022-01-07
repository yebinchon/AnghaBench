
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;


 int SBUF_ISFINISHED (struct sbuf const*) ;

int
sbuf_done(const struct sbuf *s)
{

 return (SBUF_ISFINISHED(s));
}
