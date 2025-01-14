
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct bin_buffer_hdr {int offset; int length; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
struct TYPE_2__ {int size_in_dwords; int * ptr; } ;


 int BYTES_TO_DWORDS (int ) ;
 int DBG_STATUS_OK ;
 size_t MAX_BIN_DBG_BUFFER_TYPE ;
 TYPE_1__* s_dbg_arrays ;

enum dbg_status ecore_dbg_set_bin_ptr(const u8 * const bin_ptr)
{
 struct bin_buffer_hdr *buf_array = (struct bin_buffer_hdr *)bin_ptr;
 u8 buf_id;


 for (buf_id = 0; buf_id < MAX_BIN_DBG_BUFFER_TYPE; buf_id++) {
  s_dbg_arrays[buf_id].ptr = (u32 *)(bin_ptr + buf_array[buf_id].offset);
  s_dbg_arrays[buf_id].size_in_dwords = BYTES_TO_DWORDS(buf_array[buf_id].length);
 }

 return DBG_STATUS_OK;
}
