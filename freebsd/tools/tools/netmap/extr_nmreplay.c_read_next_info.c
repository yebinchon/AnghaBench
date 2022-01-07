
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct nm_pcap_file {char* cur; char const* lim; int err; int swap; } ;


 scalar_t__ cvt (char*,int,int ) ;

__attribute__((used)) static uint32_t
read_next_info(struct nm_pcap_file *pf, int size)
{
    const char *end = pf->cur + size;
    uint32_t ret;
    if (end > pf->lim) {
 pf->err = 1;
 ret = 0;
    } else {
 ret = cvt(pf->cur, size, pf->swap);
 pf->cur = end;
    }
    return ret;
}
