
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint32_t ;
struct ecore_raw_obj {int state; unsigned long* pstate; int wait_comp; int set_pending; int clear_pending; int check_pending; int obj_type; int rdata_mapping; void* rdata; void* cl_id; int cid; void* func_id; } ;
typedef int ecore_obj_type ;
typedef int ecore_dma_addr_t ;


 int ecore_raw_check_pending ;
 int ecore_raw_clear_pending ;
 int ecore_raw_set_pending ;
 int ecore_raw_wait ;

__attribute__((used)) static inline void ecore_init_raw_obj(struct ecore_raw_obj *raw, uint8_t cl_id,
 uint32_t cid, uint8_t func_id, void *rdata, ecore_dma_addr_t rdata_mapping, int state,
 unsigned long *pstate, ecore_obj_type type)
{
 raw->func_id = func_id;
 raw->cid = cid;
 raw->cl_id = cl_id;
 raw->rdata = rdata;
 raw->rdata_mapping = rdata_mapping;
 raw->state = state;
 raw->pstate = pstate;
 raw->obj_type = type;
 raw->check_pending = ecore_raw_check_pending;
 raw->clear_pending = ecore_raw_clear_pending;
 raw->set_pending = ecore_raw_set_pending;
 raw->wait_comp = ecore_raw_wait;
}
