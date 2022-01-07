
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {scalar_t__ sl; int fmt; int * shadbuf; } ;


 int KASSERT (int,char*) ;
 int memset (int *,int ,scalar_t__) ;
 int sndbuf_zerodata (int ) ;

void
sndbuf_clearshadow(struct snd_dbuf *b)
{
 KASSERT(b != ((void*)0), ("b is a null pointer"));
 KASSERT(b->sl >= 0, ("illegal shadow length"));

 if ((b->shadbuf != ((void*)0)) && (b->sl > 0))
  memset(b->shadbuf, sndbuf_zerodata(b->fmt), b->sl);
}
