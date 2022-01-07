
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_18__ ;
typedef struct TYPE_24__ TYPE_16__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_12__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_25__ {int fsm; } ;
struct TYPE_32__ {int total; } ;
struct TYPE_23__ {TYPE_18__ ccp; TYPE_7__ stats; int proto_out; int proto_in; int Queue; } ;
struct TYPE_20__ {int sun_path; } ;
struct TYPE_19__ {struct datalink* dl; } ;
struct TYPE_24__ {TYPE_11__ socket; TYPE_10__ send; } ;
struct TYPE_26__ {int len; int address; int class; } ;
struct TYPE_22__ {TYPE_1__ enddisc; int authname; } ;
struct TYPE_34__ {scalar_t__ next_in; scalar_t__ min_in; } ;
struct TYPE_33__ {int af; scalar_t__ link; scalar_t__ seq; } ;
struct TYPE_27__ {int period; } ;
struct TYPE_28__ {TYPE_2__ autoload; } ;
struct mp {int active; scalar_t__ local_mrru; scalar_t__ peer_mrru; scalar_t__ local_is12bit; scalar_t__ peer_is12bit; TYPE_15__ link; TYPE_12__* bundle; TYPE_16__ server; TYPE_13__ peer; TYPE_9__ seq; TYPE_8__ out; TYPE_3__ cfg; } ;
struct lcp {scalar_t__ want_mrru; scalar_t__ his_mrru; scalar_t__ want_shortseq; scalar_t__ his_shortseq; } ;
struct datalink {int name; TYPE_6__* physical; TYPE_13__ peer; } ;
struct TYPE_29__ {int * parent; } ;
struct TYPE_30__ {TYPE_4__ stats; struct lcp lcp; } ;
struct TYPE_31__ {TYPE_5__ link; } ;
struct TYPE_21__ {int ncp; } ;


 int AF_INET ;
 int LogPHASE ;



 int MP_ADDED ;
 int MP_FAILED ;
 int MP_LINKSENT ;
 int MP_UP ;
 int ccp_SetOpenMode (TYPE_18__*) ;
 int fsm_Open (int *) ;
 int fsm_Up (int *) ;
 int log_Printf (int ,char*,int ,...) ;
 int memset (int ,char,int) ;
 int mp_Enddisc (int ,int ,int ) ;
 int mp_UpDown ;
 int mpserver_Open (TYPE_16__*,TYPE_13__*) ;
 int ncp_SetLink (int *,TYPE_15__*) ;
 int peerid_Equal (TYPE_13__*,TYPE_13__*) ;
 int throughput_callback (int *,int ,struct mp*) ;
 int throughput_destroy (int *) ;
 int throughput_init (int *,int ) ;

int
mp_Up(struct mp *mp, struct datalink *dl)
{
  struct lcp *lcp = &dl->physical->link.lcp;

  if (mp->active) {

    if (!peerid_Equal(&dl->peer, &mp->peer)) {
      log_Printf(LogPHASE, "%s: Inappropriate peer !\n", dl->name);
      log_Printf(LogPHASE, "  Attached to peer %s/%s\n", mp->peer.authname,
                 mp_Enddisc(mp->peer.enddisc.class, mp->peer.enddisc.address,
                            mp->peer.enddisc.len));
      log_Printf(LogPHASE, "  New link is peer %s/%s\n", dl->peer.authname,
                 mp_Enddisc(dl->peer.enddisc.class, dl->peer.enddisc.address,
                            dl->peer.enddisc.len));
      return MP_FAILED;
    }
    if (mp->local_mrru != lcp->want_mrru ||
        mp->peer_mrru != lcp->his_mrru ||
        mp->local_is12bit != lcp->want_shortseq ||
        mp->peer_is12bit != lcp->his_shortseq) {
      log_Printf(LogPHASE, "%s: Invalid MRRU/SHORTSEQ MP parameters !\n",
                dl->name);
      return MP_FAILED;
    }
    return MP_ADDED;
  } else {


    mp->local_mrru = lcp->want_mrru;
    mp->peer_mrru = lcp->his_mrru;
    mp->local_is12bit = lcp->want_shortseq;
    mp->peer_is12bit = lcp->his_shortseq;
    mp->peer = dl->peer;

    throughput_destroy(&mp->link.stats.total);
    throughput_init(&mp->link.stats.total, mp->cfg.autoload.period);
    throughput_callback(&mp->link.stats.total, mp_UpDown, mp);
    memset(mp->link.Queue, '\0', sizeof mp->link.Queue);
    memset(mp->link.proto_in, '\0', sizeof mp->link.proto_in);
    memset(mp->link.proto_out, '\0', sizeof mp->link.proto_out);


    dl->physical->link.stats.parent = &mp->link.stats.total;

    mp->out.seq = 0;
    mp->out.link = 0;
    mp->out.af = AF_INET;
    mp->seq.min_in = 0;
    mp->seq.next_in = 0;





    switch (mpserver_Open(&mp->server, &mp->peer)) {
    case 130:
      log_Printf(LogPHASE, "mp: Transfer link on %s\n",
                mp->server.socket.sun_path);
      mp->server.send.dl = dl;
      return MP_LINKSENT;
    case 129:
      return MP_FAILED;
    case 128:
      log_Printf(LogPHASE, "mp: Listening on %s\n", mp->server.socket.sun_path);
      log_Printf(LogPHASE, "    First link: %s\n", dl->name);


      ncp_SetLink(&mp->bundle->ncp, &mp->link);


      if (ccp_SetOpenMode(&mp->link.ccp)) {
        fsm_Up(&mp->link.ccp.fsm);
        fsm_Open(&mp->link.ccp.fsm);
      }

      mp->active = 1;
      break;
    }
  }

  return MP_UP;
}
