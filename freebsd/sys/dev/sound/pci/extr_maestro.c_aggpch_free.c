
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agg_info {int buf_dmat; } ;
struct agg_chinfo {int map; int buffer; struct agg_info* parent; } ;
typedef int kobj_t ;


 int dma_free (int ,int ,int ) ;
 int sndbuf_getbuf (int ) ;

__attribute__((used)) static int
aggpch_free(kobj_t obj, void *data)
{
 struct agg_chinfo *ch = data;
 struct agg_info *ess = ch->parent;


 dma_free(ess->buf_dmat, sndbuf_getbuf(ch->buffer), ch->map);


 return 0;
}
