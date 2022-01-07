; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_reinit_event_vq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_reinit_event_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32, %struct.virtio_scsi_event* }
%struct.virtio_scsi_event = type { i32 }

@VTSCSI_FLAG_HOTPLUG = common dso_local global i32 0, align 4
@VTSCSI_NUM_EVENT_BUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot reinit event vq: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*)* @vtscsi_reinit_event_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_reinit_event_vq(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca %struct.vtscsi_softc*, align 8
  %3 = alloca %struct.virtio_scsi_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %2, align 8
  %6 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @VTSCSI_FLAG_HOTPLUG, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %14 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  br label %49

19:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @VTSCSI_NUM_EVENT_BUFS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %26 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %25, i32 0, i32 2
  %27 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %27, i64 %29
  store %struct.virtio_scsi_event* %30, %struct.virtio_scsi_event** %3, align 8
  %31 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %32 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %3, align 8
  %33 = call i32 @vtscsi_enqueue_event_buf(%struct.vtscsi_softc* %31, %struct.virtio_scsi_event* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %41

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %20

41:                                               ; preds = %36, %20
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @KASSERT(i32 %44, i8* %47)
  br label %49

49:                                               ; preds = %41, %18
  ret void
}

declare dso_local i32 @vtscsi_enqueue_event_buf(%struct.vtscsi_softc*, %struct.virtio_scsi_event*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
