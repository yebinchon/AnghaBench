
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum CUDBG_DBG_ENTITY_TYPE { ____Placeholder_CUDBG_DBG_ENTITY_TYPE } CUDBG_DBG_ENTITY_TYPE ;



__attribute__((used)) static inline void set_dbg_bitmap(u8 *bitmap, enum CUDBG_DBG_ENTITY_TYPE type)
{
 int index = type / 8;
 int bit = type % 8;

 bitmap[index] |= (1 << bit);
}
