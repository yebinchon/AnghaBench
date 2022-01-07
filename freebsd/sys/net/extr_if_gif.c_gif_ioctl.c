
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct ifreq {int ifr_fib; int ifr_mtu; } ;
struct ifnet {struct gif_softc* if_softc; int if_mtu; int if_flags; } ;
struct gif_softc {scalar_t__ gif_family; int gif_options; int gif_fibnum; } ;
typedef int options ;
typedef scalar_t__ caddr_t ;




 int EINVAL ;
 int ENXIO ;


 int GIF_MTU_MAX ;
 int GIF_MTU_MIN ;
 int GIF_OPTMASK ;
 int IFF_UP ;
 int LINK_STATE_UP ;
 int PRIV_NET_GIF ;
 int copyin (int ,int*,int) ;
 int copyout (int*,int ,int) ;
 int curthread ;
 int gif_delete_tunnel (struct gif_softc*) ;
 int gif_ioctl_sx ;
 int if_link_state_change (struct ifnet*,int ) ;
 int ifr_data_get_ptr (struct ifreq*) ;
 int in6_gif_ioctl (struct gif_softc*,int,scalar_t__) ;
 int in6_gif_setopts (struct gif_softc*,int) ;
 int in_gif_ioctl (struct gif_softc*,int,scalar_t__) ;
 int in_gif_setopts (struct gif_softc*,int) ;
 int priv_check (int ,int ) ;
 int rt_numfibs ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
gif_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct ifreq *ifr = (struct ifreq*)data;
 struct gif_softc *sc;
 u_int options;
 int error;

 switch (cmd) {
 case 133:
  ifp->if_flags |= IFF_UP;
 case 142:
 case 141:
 case 139:
 case 132:
  return (0);
 case 131:
  if (ifr->ifr_mtu < GIF_MTU_MIN ||
      ifr->ifr_mtu > GIF_MTU_MAX)
   return (EINVAL);
  else
   ifp->if_mtu = ifr->ifr_mtu;
  return (0);
 }
 sx_xlock(&gif_ioctl_sx);
 sc = ifp->if_softc;
 if (sc == ((void*)0)) {
  error = ENXIO;
  goto bad;
 }
 error = 0;
 switch (cmd) {
 case 140:
  if (sc->gif_family == 0)
   break;
  gif_delete_tunnel(sc);
  break;
 case 134:
  ifr->ifr_fib = sc->gif_fibnum;
  break;
 case 128:
  if ((error = priv_check(curthread, PRIV_NET_GIF)) != 0)
   break;
  if (ifr->ifr_fib >= rt_numfibs)
   error = EINVAL;
  else
   sc->gif_fibnum = ifr->ifr_fib;
  break;
 case 144:
  options = sc->gif_options;
  error = copyout(&options, ifr_data_get_ptr(ifr),
      sizeof(options));
  break;
 case 143:
  if ((error = priv_check(curthread, PRIV_NET_GIF)) != 0)
   break;
  error = copyin(ifr_data_get_ptr(ifr), &options,
      sizeof(options));
  if (error)
   break;
  if (options & ~GIF_OPTMASK) {
   error = EINVAL;
   break;
  }
  if (sc->gif_options != options) {
   switch (sc->gif_family) {
   default:

    sc->gif_options = options;
   }
  }
  break;
 default:
  error = EINVAL;
  break;
 }
 if (error == 0 && sc->gif_family != 0) {
  if (






      0) {
   if_link_state_change(ifp, LINK_STATE_UP);
  }
 }
bad:
 sx_xunlock(&gif_ioctl_sx);
 return (error);
}
