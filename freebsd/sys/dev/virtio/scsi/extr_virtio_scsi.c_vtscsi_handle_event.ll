; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_handle_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%struct.virtio_scsi_event = type { i32 }

@VIRTIO_SCSI_T_EVENTS_MISSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unhandled event: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot requeue event buffer: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %struct.virtio_scsi_event*)* @vtscsi_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_handle_event(%struct.vtscsi_softc* %0, %struct.virtio_scsi_event* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.virtio_scsi_event*, align 8
  %5 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %struct.virtio_scsi_event* %1, %struct.virtio_scsi_event** %4, align 8
  %6 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %7 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VIRTIO_SCSI_T_EVENTS_MISSED, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %14 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %20 [
    i32 128, label %16
  ]

16:                                               ; preds = %12
  %17 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %18 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %19 = call i32 @vtscsi_transport_reset_event(%struct.vtscsi_softc* %17, %struct.virtio_scsi_event* %18)
  br label %28

20:                                               ; preds = %12
  %21 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %25 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %20, %16
  br label %32

29:                                               ; preds = %2
  %30 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %31 = call i32 @vtscsi_execute_rescan_bus(%struct.vtscsi_softc* %30)
  br label %32

32:                                               ; preds = %29, %28
  %33 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %34 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %35 = call i32 @vtscsi_enqueue_event_buf(%struct.vtscsi_softc* %33, %struct.virtio_scsi_event* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @KASSERT(i32 %38, i8* %41)
  ret void
}

declare dso_local i32 @vtscsi_transport_reset_event(%struct.vtscsi_softc*, %struct.virtio_scsi_event*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @vtscsi_execute_rescan_bus(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_enqueue_event_buf(%struct.vtscsi_softc*, %struct.virtio_scsi_event*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
