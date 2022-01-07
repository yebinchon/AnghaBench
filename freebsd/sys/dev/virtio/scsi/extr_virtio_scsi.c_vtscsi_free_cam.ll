; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_free_cam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_free_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*)* @vtscsi_free_cam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_free_cam(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca %struct.vtscsi_softc*, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %2, align 8
  %3 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %4 = call i32 @VTSCSI_LOCK(%struct.vtscsi_softc* %3)
  %5 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %11 = call i32 @vtscsi_deregister_async(%struct.vtscsi_softc* %10)
  %12 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %13 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @xpt_free_path(i32* %14)
  %16 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %17 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %19 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @cam_sim_path(i32* %20)
  %22 = call i32 @xpt_bus_deregister(i32 %21)
  br label %23

23:                                               ; preds = %9, %1
  %24 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %25 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %30 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @cam_sim_free(i32* %31, i32 1)
  %33 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %34 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %37 = call i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc* %36)
  ret void
}

declare dso_local i32 @VTSCSI_LOCK(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_deregister_async(%struct.vtscsi_softc*) #1

declare dso_local i32 @xpt_free_path(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
