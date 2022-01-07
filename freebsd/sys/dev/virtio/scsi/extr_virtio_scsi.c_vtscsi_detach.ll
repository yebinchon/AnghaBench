; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32*, i32 }

@VTSCSI_FLAG_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtscsi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtscsi_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.vtscsi_softc* @device_get_softc(i32 %4)
  store %struct.vtscsi_softc* %5, %struct.vtscsi_softc** %3, align 8
  %6 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %7 = call i32 @VTSCSI_LOCK(%struct.vtscsi_softc* %6)
  %8 = load i32, i32* @VTSCSI_FLAG_DETACH, align 4
  %9 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @device_is_attached(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %18 = call i32 @vtscsi_stop(%struct.vtscsi_softc* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %21 = call i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc* %20)
  %22 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %23 = call i32 @vtscsi_complete_vqs(%struct.vtscsi_softc* %22)
  %24 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %25 = call i32 @vtscsi_drain_vqs(%struct.vtscsi_softc* %24)
  %26 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %27 = call i32 @vtscsi_free_cam(%struct.vtscsi_softc* %26)
  %28 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %29 = call i32 @vtscsi_free_requests(%struct.vtscsi_softc* %28)
  %30 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %31 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @sglist_free(i32* %37)
  %39 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %40 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %34, %19
  %42 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %43 = call i32 @VTSCSI_LOCK_DESTROY(%struct.vtscsi_softc* %42)
  ret i32 0
}

declare dso_local %struct.vtscsi_softc* @device_get_softc(i32) #1

declare dso_local i32 @VTSCSI_LOCK(%struct.vtscsi_softc*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @vtscsi_stop(%struct.vtscsi_softc*) #1

declare dso_local i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_complete_vqs(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_drain_vqs(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_free_cam(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_free_requests(%struct.vtscsi_softc*) #1

declare dso_local i32 @sglist_free(i32*) #1

declare dso_local i32 @VTSCSI_LOCK_DESTROY(%struct.vtscsi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
