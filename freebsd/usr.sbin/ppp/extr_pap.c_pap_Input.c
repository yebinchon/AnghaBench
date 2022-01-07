
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t u_char ;
struct TYPE_12__ {int auth_ineed; int auth_iwait; } ;
struct TYPE_13__ {TYPE_4__ lcp; } ;
struct physical {TYPE_7__* dl; TYPE_5__ link; } ;
struct mbuf {int dummy; } ;
struct link {int dummy; } ;
struct TYPE_10__ {int * file; } ;
struct TYPE_14__ {TYPE_2__ cfg; } ;
struct bundle {TYPE_6__ radius; } ;
struct TYPE_9__ {int code; scalar_t__ id; int length; } ;
struct TYPE_11__ {char* name; TYPE_1__ hdr; } ;
struct authinfo {scalar_t__ id; TYPE_3__ in; } ;
struct TYPE_15__ {struct authinfo pap; } ;


 scalar_t__ Enabled (struct bundle*,int ) ;
 int LogERROR ;
 int LogPHASE ;
 int LogWARN ;
 int MAXPAPCODE ;
 char* MBUF_CTOP (struct mbuf*) ;
 int MB_PAPIN ;
 int OPT_IDCHECK ;



 scalar_t__ PHASE_AUTHENTICATE ;
 scalar_t__ PHASE_NETWORK ;
 int PROTO_PAP ;
 struct mbuf* auth_ReadHeader (struct authinfo*,struct mbuf*) ;
 struct mbuf* auth_ReadName (struct authinfo*,struct mbuf*,size_t) ;
 int auth_StopTimer (struct authinfo*) ;
 int auth_Validate (struct bundle*,size_t*,size_t*) ;
 scalar_t__ bundle_Phase (struct bundle*) ;
 int datalink_AuthNotOk (TYPE_7__*) ;
 int datalink_AuthOk (TYPE_7__*) ;
 int free (size_t*) ;
 struct physical* link2physical (struct link*) ;
 int log_Printf (int ,char*,...) ;
 int m_freem (struct mbuf*) ;
 size_t m_length (struct mbuf*) ;
 struct mbuf* m_pullup (struct mbuf*) ;
 int m_settype (struct mbuf*,int ) ;
 size_t* malloc (int ) ;
 struct mbuf* mbuf_Read (struct mbuf*,size_t*,size_t) ;
 scalar_t__ ntohs (int ) ;
 int pap_Failure (struct authinfo*) ;
 int pap_Success (struct authinfo*) ;
 int * papcodes ;
 int radius_Authenticate (TYPE_6__*,struct authinfo*,size_t*,size_t*,int,int *,int ) ;
 int strlen (size_t*) ;

struct mbuf *
pap_Input(struct bundle *bundle, struct link *l, struct mbuf *bp)
{
  struct physical *p = link2physical(l);
  struct authinfo *authp = &p->dl->pap;
  u_char nlen, klen, *key;
  const char *txt;
  int txtlen;

  if (p == ((void*)0)) {
    log_Printf(LogERROR, "pap_Input: Not a physical link - dropped\n");
    m_freem(bp);
    return ((void*)0);
  }

  if (bundle_Phase(bundle) != PHASE_NETWORK &&
      bundle_Phase(bundle) != PHASE_AUTHENTICATE) {
    log_Printf(LogPHASE, "Unexpected pap input - dropped !\n");
    m_freem(bp);
    return ((void*)0);
  }

  if ((bp = auth_ReadHeader(authp, bp)) == ((void*)0) &&
      ntohs(authp->in.hdr.length) == 0) {
    log_Printf(LogWARN, "Pap Input: Truncated header !\n");
    return ((void*)0);
  }

  if (authp->in.hdr.code == 0 || authp->in.hdr.code > MAXPAPCODE) {
    log_Printf(LogPHASE, "Pap Input: %d: Bad PAP code !\n", authp->in.hdr.code);
    m_freem(bp);
    return ((void*)0);
  }

  if (authp->in.hdr.code != 128 && authp->id != authp->in.hdr.id &&
      Enabled(bundle, OPT_IDCHECK)) {

    log_Printf(LogPHASE, "Pap Input: %s dropped (got id %d, not %d)\n",
               papcodes[authp->in.hdr.code], authp->in.hdr.id, authp->id);
    m_freem(bp);
    return ((void*)0);
  }
  m_settype(bp, MB_PAPIN);
  authp->id = authp->in.hdr.id;

  if (bp) {
    bp = mbuf_Read(bp, &nlen, 1);
    if (authp->in.hdr.code == 130) {





      bp = m_pullup(bp);
      txt = MBUF_CTOP(bp);
      txtlen = m_length(bp);
    } else {
      bp = auth_ReadName(authp, bp, nlen);
      txt = authp->in.name;
      txtlen = strlen(authp->in.name);
    }
  } else {
    txt = "";
    txtlen = 0;
  }

  log_Printf(LogPHASE, "Pap Input: %s (%.*s)\n",
             papcodes[authp->in.hdr.code], txtlen, txt);

  switch (authp->in.hdr.code) {
    case 128:
      if (bp == ((void*)0)) {
        log_Printf(LogPHASE, "Pap Input: No key given !\n");
        break;
      }
      bp = mbuf_Read(bp, &klen, 1);
      if (m_length(bp) < klen) {
        log_Printf(LogERROR, "Pap Input: Truncated key !\n");
        break;
      }
      if ((key = malloc(klen+1)) == ((void*)0)) {
        log_Printf(LogERROR, "Pap Input: Out of memory !\n");
        break;
      }
      bp = mbuf_Read(bp, key, klen);
      key[klen] = '\0';


      if (*bundle->radius.cfg.file) {
        if (!radius_Authenticate(&bundle->radius, authp, authp->in.name,
                                 key, strlen(key), ((void*)0), 0))
          pap_Failure(authp);
      } else

      if (auth_Validate(bundle, authp->in.name, key))
        pap_Success(authp);
      else
        pap_Failure(authp);

      free(key);
      break;

    case 130:
      auth_StopTimer(authp);
      if (p->link.lcp.auth_iwait == PROTO_PAP) {
        p->link.lcp.auth_iwait = 0;
        if (p->link.lcp.auth_ineed == 0)





          datalink_AuthOk(p->dl);
      }
      break;

    case 129:
      auth_StopTimer(authp);
      datalink_AuthNotOk(p->dl);
      break;
  }

  m_freem(bp);
  return ((void*)0);
}
