
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dummy; } ;


 int M_DEVBUF ;
 int free (struct snd_dbuf*,int ) ;
 int sndbuf_free (struct snd_dbuf*) ;

void
sndbuf_destroy(struct snd_dbuf *b)
{
 sndbuf_free(b);
 free(b, M_DEVBUF);
}
