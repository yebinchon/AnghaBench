
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netbuf {scalar_t__ len; scalar_t__ maxlen; int * buf; } ;
typedef int bool_t ;


 int FALSE ;
 int TRUE ;
 int assert (int) ;
 int * calloc (int,scalar_t__) ;
 int free (int *) ;
 int memcpy (int *,int *,scalar_t__) ;

__attribute__((used)) static bool_t
netbuf_copybuf(struct netbuf *dst, const struct netbuf *src)
{
 assert(src->len <= src->maxlen);

 if (dst->maxlen < src->len || dst->buf == ((void*)0)) {
  free(dst->buf);
  if ((dst->buf = calloc(1, src->maxlen)) == ((void*)0))
   return (FALSE);
  dst->maxlen = src->maxlen;
 }

 dst->len = src->len;
 memcpy(dst->buf, src->buf, src->len);

 return (TRUE);
}
