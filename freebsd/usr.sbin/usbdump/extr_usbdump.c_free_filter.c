
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_filt {int dummy; } ;
struct bpf_program {struct usb_filt* bf_insns; } ;


 struct usb_filt* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int entry ;
 int free (struct usb_filt*) ;
 int usb_filt_head ;

__attribute__((used)) static void
free_filter(struct bpf_program *pprog)
{
 struct usb_filt *puf;

 while ((puf = STAILQ_FIRST(&usb_filt_head)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&usb_filt_head, entry);
  free(puf);
 }
 free(pprog->bf_insns);
}
