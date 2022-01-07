
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndtest_state {int rs_discard; int rs_collect; int rs_to; int rs_parent; scalar_t__ rs_begin; scalar_t__ rs_current; scalar_t__ rs_buf; scalar_t__ rs_end; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int callout_init (int *,...) ;
 int device_printf (int ,char*) ;
 struct rndtest_state* malloc (int,int ,int ) ;

struct rndtest_state *
rndtest_attach(device_t dev)
{
 struct rndtest_state *rsp;

 rsp = malloc(sizeof (*rsp), M_DEVBUF, M_NOWAIT);
 if (rsp != ((void*)0)) {
  rsp->rs_begin = rsp->rs_buf;
  rsp->rs_end = rsp->rs_buf + sizeof(rsp->rs_buf);
  rsp->rs_current = rsp->rs_begin;
  rsp->rs_discard = 1;
  rsp->rs_collect = 1;
  rsp->rs_parent = dev;

  callout_init(&rsp->rs_to);



 } else
  device_printf(dev, "rndtest_init: no memory for state block\n");
 return (rsp);
}
