
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc_port {int vcsp_outvq; int vcsp_invq; } ;
struct vtcon_softc {int vtcon_max_ports; int vtcon_flags; struct vtcon_softc_port* vtcon_ports; int vtcon_ctrl_txvq; int vtcon_ctrl_rxvq; int vtcon_dev; } ;
struct vq_alloc_info {int dummy; } ;
typedef int device_t ;


 int ENOMEM ;
 int M_NOWAIT ;
 int M_TEMP ;
 int VQ_ALLOC_INFO_INIT (struct vq_alloc_info*,int ,int *,...) ;
 int VTCON_FLAG_MULTIPORT ;
 int device_get_nameunit (int ) ;
 int free (struct vq_alloc_info*,int ) ;
 struct vq_alloc_info* malloc (int,int ,int ) ;
 int virtio_alloc_virtqueues (int ,int ,int,struct vq_alloc_info*) ;
 int vtcon_ctrl_event_intr ;
 int * vtcon_port_intr ;

__attribute__((used)) static int
vtcon_alloc_virtqueues(struct vtcon_softc *sc)
{
 device_t dev;
 struct vq_alloc_info *info;
 struct vtcon_softc_port *scport;
 int i, idx, portidx, nvqs, error;

 dev = sc->vtcon_dev;

 nvqs = sc->vtcon_max_ports * 2;
 if (sc->vtcon_flags & VTCON_FLAG_MULTIPORT)
  nvqs += 2;

 info = malloc(sizeof(struct vq_alloc_info) * nvqs, M_TEMP, M_NOWAIT);
 if (info == ((void*)0))
  return (ENOMEM);

 for (i = 0, idx = 0, portidx = 0; i < nvqs / 2; i++, idx += 2) {

  if (i == 1) {

   VQ_ALLOC_INFO_INIT(&info[idx], 0,
       vtcon_ctrl_event_intr, sc, &sc->vtcon_ctrl_rxvq,
       "%s-control rx", device_get_nameunit(dev));
   VQ_ALLOC_INFO_INIT(&info[idx+1], 0,
       ((void*)0), sc, &sc->vtcon_ctrl_txvq,
       "%s-control tx", device_get_nameunit(dev));
   continue;
  }

  scport = &sc->vtcon_ports[portidx];

  VQ_ALLOC_INFO_INIT(&info[idx], 0, vtcon_port_intr,
      scport, &scport->vcsp_invq, "%s-port%d in",
      device_get_nameunit(dev), i);
  VQ_ALLOC_INFO_INIT(&info[idx+1], 0, ((void*)0),
      ((void*)0), &scport->vcsp_outvq, "%s-port%d out",
      device_get_nameunit(dev), i);

  portidx++;
 }

 error = virtio_alloc_virtqueues(dev, 0, nvqs, info);
 free(info, M_TEMP);

 return (error);
}
