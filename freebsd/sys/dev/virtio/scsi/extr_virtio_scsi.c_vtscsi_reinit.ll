; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32 }

@VTSCSI_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*)* @vtscsi_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_reinit(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca %struct.vtscsi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %2, align 8
  %5 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @virtio_reinit(i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %17 = call i32 @vtscsi_write_device_config(%struct.vtscsi_softc* %16)
  %18 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %19 = call i32 @vtscsi_reinit_event_vq(%struct.vtscsi_softc* %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @virtio_reinit_complete(i32 %20)
  %22 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %23 = call i32 @vtscsi_enable_vqs_intr(%struct.vtscsi_softc* %22)
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %26 = load i32, i32* @VTSCSI_TRACE, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %25, i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @virtio_reinit(i32, i32) #1

declare dso_local i32 @vtscsi_write_device_config(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_reinit_event_vq(%struct.vtscsi_softc*) #1

declare dso_local i32 @virtio_reinit_complete(i32) #1

declare dso_local i32 @vtscsi_enable_vqs_intr(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
