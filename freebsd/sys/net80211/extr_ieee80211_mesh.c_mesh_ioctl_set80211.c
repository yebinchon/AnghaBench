
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int tmpproto ;
struct ieee80211vap {scalar_t__ iv_opmode; int iv_myaddr; struct ieee80211_mesh_state* iv_mesh; } ;
struct ieee80211req {int i_type; int i_len; int i_data; int i_val; } ;
struct ieee80211_mesh_state {int ms_idlen; char ms_ttl; int ms_flags; int ms_id; } ;


 int EINVAL ;
 int ENETRESET ;
 int ENOSYS ;
 int IEEE80211_ADDR_EQ (int ,int ) ;
 int IEEE80211_ADDR_LEN ;
 int IEEE80211_MESHFLAGS_AP ;
 int IEEE80211_MESHFLAGS_FWD ;
 int IEEE80211_MESHFLAGS_GATE ;
 int IEEE80211_MESHID_LEN ;
 int IEEE80211_MESH_PROTO_DSZ ;




 scalar_t__ IEEE80211_M_MBSS ;
 int IEEE80211_NWID_LEN ;
 int broadcastaddr ;
 int copyin (int ,...) ;
 int ieee80211_mesh_discover (struct ieee80211vap*,char*,int *) ;
 int ieee80211_mesh_rt_del (struct ieee80211vap*,int ) ;
 int ieee80211_mesh_rt_flush (struct ieee80211vap*) ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,int) ;
 int mesh_gatemode_setup (struct ieee80211vap*) ;
 int mesh_select_proto_metric (struct ieee80211vap*,char*) ;
 int mesh_select_proto_path (struct ieee80211vap*,char*) ;

__attribute__((used)) static int
mesh_ioctl_set80211(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 struct ieee80211_mesh_state *ms = vap->iv_mesh;
 uint8_t tmpmeshid[IEEE80211_NWID_LEN];
 uint8_t tmpaddr[IEEE80211_ADDR_LEN];
 char tmpproto[IEEE80211_MESH_PROTO_DSZ];
 int error;

 if (vap->iv_opmode != IEEE80211_M_MBSS)
  return ENOSYS;

 error = 0;
 switch (ireq->i_type) {
 case 136:
  if (ireq->i_val != 0 || ireq->i_len > IEEE80211_MESHID_LEN)
   return EINVAL;
  error = copyin(ireq->i_data, tmpmeshid, ireq->i_len);
  if (error != 0)
   break;
  memset(ms->ms_id, 0, IEEE80211_NWID_LEN);
  ms->ms_idlen = ireq->i_len;
  memcpy(ms->ms_id, tmpmeshid, ireq->i_len);
  error = ENETRESET;
  break;
 case 139:
  if (ireq->i_val)
   ms->ms_flags |= IEEE80211_MESHFLAGS_AP;
  else
   ms->ms_flags &= ~IEEE80211_MESHFLAGS_AP;
  error = ENETRESET;
  break;
 case 138:
  if (ireq->i_val)
   ms->ms_flags |= IEEE80211_MESHFLAGS_FWD;
  else
   ms->ms_flags &= ~IEEE80211_MESHFLAGS_FWD;
  mesh_gatemode_setup(vap);
  break;
 case 137:
  if (ireq->i_val)
   ms->ms_flags |= IEEE80211_MESHFLAGS_GATE;
  else
   ms->ms_flags &= ~IEEE80211_MESHFLAGS_GATE;
  break;
 case 132:
  ms->ms_ttl = (uint8_t) ireq->i_val;
  break;
 case 133:
  switch (ireq->i_val) {
  case 128:
   return EINVAL;
  case 129:
   ieee80211_mesh_rt_flush(vap);
   break;
  case 131:
   if (IEEE80211_ADDR_EQ(vap->iv_myaddr, ireq->i_data) ||
       IEEE80211_ADDR_EQ(broadcastaddr, ireq->i_data))
    return EINVAL;
   error = copyin(ireq->i_data, &tmpaddr,
       IEEE80211_ADDR_LEN);
   if (error == 0)
    ieee80211_mesh_discover(vap, tmpaddr, ((void*)0));
   break;
  case 130:
   ieee80211_mesh_rt_del(vap, ireq->i_data);
   break;
  default:
   return ENOSYS;
  }
  break;
 case 135:
  error = copyin(ireq->i_data, tmpproto, sizeof(tmpproto));
  if (error == 0) {
   error = mesh_select_proto_metric(vap, tmpproto);
   if (error == 0)
    error = ENETRESET;
  }
  break;
 case 134:
  error = copyin(ireq->i_data, tmpproto, sizeof(tmpproto));
  if (error == 0) {
   error = mesh_select_proto_path(vap, tmpproto);
   if (error == 0)
    error = ENETRESET;
  }
  break;
 default:
  return ENOSYS;
 }
 return error;
}
