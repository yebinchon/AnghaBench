
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t pos; int* buf; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct config_source {TYPE_2__ u; } ;


 int BUG (char*) ;
 int EOF ;

__attribute__((used)) static int config_buf_ungetc(int c, struct config_source *conf)
{
 if (conf->u.buf.pos > 0) {
  conf->u.buf.pos--;
  if (conf->u.buf.buf[conf->u.buf.pos] != c)
   BUG("config_buf can only ungetc the same character");
  return c;
 }

 return EOF;
}
