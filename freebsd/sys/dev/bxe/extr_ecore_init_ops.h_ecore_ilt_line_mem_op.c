
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct ilt_line {int size; int page; int page_mapping; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_ILT_FREE (int ,int ,int ) ;
 int ECORE_ILT_ZALLOC (int ,int *,int ) ;
 scalar_t__ ILT_MEMOP_FREE ;

__attribute__((used)) static int ecore_ilt_line_mem_op(struct bxe_softc *sc,
     struct ilt_line *line, uint32_t size, uint8_t memop)
{
 if (memop == ILT_MEMOP_FREE) {
  ECORE_ILT_FREE(line->page, line->page_mapping, line->size);
  return 0;
 }
 ECORE_ILT_ZALLOC(line->page, &line->page_mapping, size);
 if (!line->page)
  return -1;
 line->size = size;
 return 0;
}
