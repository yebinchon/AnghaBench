
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyoutq {scalar_t__ to_end; scalar_t__ to_begin; } ;



void
ttyoutq_flush(struct ttyoutq *to)
{

 to->to_begin = 0;
 to->to_end = 0;
}
