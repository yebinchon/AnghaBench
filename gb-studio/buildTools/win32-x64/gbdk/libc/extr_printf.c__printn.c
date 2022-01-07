
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void volatile stub1 (char,void*) ;
 void volatile stub2 (char const,void*) ;

__attribute__((used)) static void _printn(unsigned u, unsigned base, char issigned,
                    volatile void (*emitter)(char, void *), void *pData)
{
    const char *_hex = "0123456789ABCDEF";
    if (issigned && ((int)u < 0)) {
 (*emitter)('-', pData);
 u = (unsigned)-((int)u);
    }
    if (u >= base)
 _printn(u/base, base, 0, emitter, pData);
    (*emitter)(_hex[u%base], pData);
}
