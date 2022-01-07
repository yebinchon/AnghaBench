
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_pcap_file {int fd; int filesize; scalar_t__ data; } ;


 int bzero (struct nm_pcap_file*,int) ;
 int close (int ) ;
 int free (struct nm_pcap_file*) ;
 int munmap (void*,int ) ;

__attribute__((used)) static void destroy_pcap(struct nm_pcap_file *pf)
{
    if (!pf)
 return;

    munmap((void *)(uintptr_t)pf->data, pf->filesize);
    close(pf->fd);
    bzero(pf, sizeof(*pf));
    free(pf);
    return;
}
