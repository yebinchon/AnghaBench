
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int dummy; } ;
struct lio_data_pkt {int reqtype; int datasize; int buf; int cmd; int q_no; } ;


 int lio_send_command (struct octeon_device*,int ,int,int *,int ,int ,int ) ;

int
lio_send_data_pkt(struct octeon_device *oct, struct lio_data_pkt *ndata)
{
 int ring_doorbell = 1;

 return (lio_send_command(oct, ndata->q_no, ring_doorbell, &ndata->cmd,
     ndata->buf, ndata->datasize, ndata->reqtype));
}
