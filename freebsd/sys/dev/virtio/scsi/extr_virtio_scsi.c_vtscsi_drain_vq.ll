; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_drain_vq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_drain_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%struct.virtqueue = type { i32 }
%struct.vtscsi_request = type { i32 }

@VTSCSI_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vq=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"virtqueue not empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %struct.virtqueue*)* @vtscsi_drain_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_drain_vq(%struct.vtscsi_softc* %0, %struct.virtqueue* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.virtqueue*, align 8
  %5 = alloca %struct.vtscsi_request*, align 8
  %6 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %struct.virtqueue* %1, %struct.virtqueue** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %8 = load i32, i32* @VTSCSI_TRACE, align 4
  %9 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %10 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %7, i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.virtqueue* %9)
  br label %11

11:                                               ; preds = %15, %2
  %12 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %13 = call %struct.vtscsi_request* @virtqueue_drain(%struct.virtqueue* %12, i32* %6)
  store %struct.vtscsi_request* %13, %struct.vtscsi_request** %5, align 8
  %14 = icmp ne %struct.vtscsi_request* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %17 = load %struct.vtscsi_request*, %struct.vtscsi_request** %5, align 8
  %18 = call i32 @vtscsi_cancel_request(%struct.vtscsi_softc* %16, %struct.vtscsi_request* %17)
  br label %11

19:                                               ; preds = %11
  %20 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %21 = call i32 @virtqueue_empty(%struct.virtqueue* %20)
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, %struct.virtqueue*) #1

declare dso_local %struct.vtscsi_request* @virtqueue_drain(%struct.virtqueue*, i32*) #1

declare dso_local i32 @vtscsi_cancel_request(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @virtqueue_empty(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
