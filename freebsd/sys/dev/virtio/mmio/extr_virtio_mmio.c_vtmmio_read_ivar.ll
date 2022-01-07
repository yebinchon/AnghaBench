; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtmmio_softc = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@VIRTIO_MMIO_DEVICE_ID = common dso_local global i32 0, align 4
@VIRTIO_MMIO_VENDOR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i64*)* @vtmmio_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtmmio_read_ivar(i64 %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.vtmmio_softc*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call %struct.vtmmio_softc* @device_get_softc(i64 %11)
  store %struct.vtmmio_softc* %12, %struct.vtmmio_softc** %10, align 8
  %13 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %10, align 8
  %14 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %5, align 4
  br label %37

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %34 [
    i32 131, label %22
    i32 130, label %22
    i32 128, label %27
    i32 129, label %32
    i32 132, label %32
  ]

22:                                               ; preds = %20, %20
  %23 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %10, align 8
  %24 = load i32, i32* @VIRTIO_MMIO_DEVICE_ID, align 4
  %25 = call i64 @vtmmio_read_config_4(%struct.vtmmio_softc* %23, i32 %24)
  %26 = load i64*, i64** %9, align 8
  store i64 %25, i64* %26, align 8
  br label %36

27:                                               ; preds = %20
  %28 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %10, align 8
  %29 = load i32, i32* @VIRTIO_MMIO_VENDOR_ID, align 4
  %30 = call i64 @vtmmio_read_config_4(%struct.vtmmio_softc* %28, i32 %29)
  %31 = load i64*, i64** %9, align 8
  store i64 %30, i64* %31, align 8
  br label %36

32:                                               ; preds = %20, %20
  %33 = load i64*, i64** %9, align 8
  store i64 0, i64* %33, align 8
  br label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @ENOENT, align 4
  store i32 %35, i32* %5, align 4
  br label %37

36:                                               ; preds = %32, %27, %22
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %34, %18
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.vtmmio_softc* @device_get_softc(i64) #1

declare dso_local i64 @vtmmio_read_config_4(%struct.vtmmio_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
