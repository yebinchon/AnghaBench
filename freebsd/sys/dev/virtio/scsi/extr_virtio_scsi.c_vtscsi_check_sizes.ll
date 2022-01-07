; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_check_sizes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_check_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32, i32, i32 }

@VTSCSI_FLAG_INDIRECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"clamping seg_max (%d %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*)* @vtscsi_check_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_check_sizes(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca %struct.vtscsi_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %2, align 8
  %4 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @VTSCSI_FLAG_INDIRECT, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @virtqueue_size(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %10
  %21 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %22 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %25 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %31 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %20, %10
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @virtqueue_size(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
