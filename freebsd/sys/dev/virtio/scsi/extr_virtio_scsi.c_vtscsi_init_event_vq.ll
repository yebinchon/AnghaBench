; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_init_event_vq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_init_event_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32, %struct.virtio_scsi_event* }
%struct.virtio_scsi_event = type { i32 }

@VTSCSI_FLAG_HOTPLUG = common dso_local global i32 0, align 4
@VTSCSI_NUM_EVENT_BUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*)* @vtscsi_init_event_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_init_event_vq(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.virtio_scsi_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  %8 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @VTSCSI_FLAG_HOTPLUG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %52

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @VTSCSI_NUM_EVENT_BUFS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %31 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %30, i32 0, i32 2
  %32 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %32, i64 %34
  store %struct.virtio_scsi_event* %35, %struct.virtio_scsi_event** %4, align 8
  %36 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %37 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %38 = call i32 @vtscsi_enqueue_event_buf(%struct.vtscsi_softc* %36, %struct.virtio_scsi_event* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %46

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %25

46:                                               ; preds = %41, %25
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %23
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @vtscsi_enqueue_event_buf(%struct.vtscsi_softc*, %struct.virtio_scsi_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
