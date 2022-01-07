
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ max_allocation_length; int extendable; scalar_t__ allocation_length; int segment_list; int * ocs; } ;
typedef TYPE_1__ ocs_textbuf_t ;
typedef int ocs_t ;
typedef int int32_t ;


 scalar_t__ OCS_TEXTBUF_MAX_ALLOC_LEN ;
 int TRUE ;
 int link ;
 int ocs_list_init (int *,int ,int ) ;
 int ocs_memset (TYPE_1__*,int ,int) ;
 int * ocs_textbuf_segment_alloc (TYPE_1__*) ;
 int ocs_textbuf_segment_t ;

int32_t
ocs_textbuf_alloc(ocs_t *ocs, ocs_textbuf_t *textbuf, uint32_t length)
{
 ocs_memset(textbuf, 0, sizeof(*textbuf));

 textbuf->ocs = ocs;
 ocs_list_init(&textbuf->segment_list, ocs_textbuf_segment_t, link);

 if (length > OCS_TEXTBUF_MAX_ALLOC_LEN) {
  textbuf->allocation_length = OCS_TEXTBUF_MAX_ALLOC_LEN;
 } else {
  textbuf->allocation_length = length;
 }


 textbuf->extendable = TRUE;


 textbuf->max_allocation_length = length;


 return (ocs_textbuf_segment_alloc(textbuf) == ((void*)0)) ? -1 : 0;
}
