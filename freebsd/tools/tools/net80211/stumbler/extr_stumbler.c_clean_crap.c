
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_info {struct node_info* next; } ;


 int bpf_s ;
 int close (int) ;
 int free (struct node_info*) ;
 int ioctl_s ;
 struct node_info* nodes ;

void clean_crap() {
 struct node_info* next;

 if (ioctl_s != -1)
  close(ioctl_s);
 if (bpf_s != -1)
  close(bpf_s);

 while (nodes) {
  next = nodes->next;
  free(nodes);
  nodes = next;
 }
}
