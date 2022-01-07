
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int SWAP (struct strbuf,struct strbuf) ;

__attribute__((used)) static inline void strbuf_swap(struct strbuf *a, struct strbuf *b)
{
 SWAP(*a, *b);
}
