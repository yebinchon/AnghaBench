
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ng_btsocket_l2cap_raw_chan_list {int num_channels; TYPE_1__* channels; } ;
typedef int r ;
typedef int ng_l2cap_node_chan_ep ;
struct TYPE_3__ {int scid; int dcid; int psm; int imtu; int omtu; int state; int remote; } ;


 int ENOMEM ;
 int ERROR ;
 int NG_L2CAP_MAX_CHAN_NUM ;
 int OK ;
 int SIOC_L2CAP_NODE_GET_CHAN_LIST ;
 char* bdaddrpr (int *) ;
 TYPE_1__* calloc (int,int) ;
 char* ch_state2str (int ) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int free (TYPE_1__*) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_l2cap_raw_chan_list*,int) ;
 int memset (struct ng_btsocket_l2cap_raw_chan_list*,int ,int) ;
 int stdout ;

__attribute__((used)) static int
l2cap_read_channel_list(int s, int argc, char **argv)
{
 static char const * const state[] = {
                          "CLOSED",
                                   "W4_L2CAP_CON_RSP",
                                  "W4_L2CA_CON_RSP",
                          "CONFIG",
                        "OPEN",
                                     "W4_L2CAP_DISCON_RSP",
                                    "W4_L2CA_DISCON_RSP"
 };


 struct ng_btsocket_l2cap_raw_chan_list r;
 int n, error = OK;

 memset(&r, 0, sizeof(r));
 r.num_channels = NG_L2CAP_MAX_CHAN_NUM;
 r.channels = calloc(NG_L2CAP_MAX_CHAN_NUM,
    sizeof(ng_l2cap_node_chan_ep));
 if (r.channels == ((void*)0)) {
  errno = ENOMEM;
  return (ERROR);
 }

 if (ioctl(s, SIOC_L2CAP_NODE_GET_CHAN_LIST, &r, sizeof(r)) < 0) {
  error = ERROR;
  goto out;
 }

 fprintf(stdout, "L2CAP channels:\n");
 fprintf(stdout,
"Remote BD_ADDR     SCID/ DCID   PSM  IMTU/ OMTU State\n");
 for (n = 0; n < r.num_channels; n++) {
  fprintf(stdout,
   "%-17.17s " "%5d/%5d %5d " "%5d/%5d " "%s\n",



   bdaddrpr(&r.channels[n].remote),
   r.channels[n].scid, r.channels[n].dcid,
   r.channels[n].psm, r.channels[n].imtu,
   r.channels[n].omtu,
   ((r.channels[n].state) >= SIZE(state)? "UNKNOWN" : state[(r.channels[n].state)]));
 }
out:
 free(r.channels);

 return (error);
}
