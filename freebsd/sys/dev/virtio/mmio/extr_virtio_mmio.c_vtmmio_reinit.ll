; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtmmio_softc = type { i32 }

@VIRTIO_CONFIG_STATUS_RESET = common dso_local global i64 0, align 8
@VIRTIO_CONFIG_STATUS_ACK = common dso_local global i32 0, align 4
@VIRTIO_CONFIG_STATUS_DRIVER = common dso_local global i32 0, align 4
@VIRTIO_MMIO_GUEST_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vtmmio_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtmmio_reinit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vtmmio_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.vtmmio_softc* @device_get_softc(i32 %9)
  store %struct.vtmmio_softc* %10, %struct.vtmmio_softc** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @vtmmio_get_status(i32 %11)
  %13 = load i64, i64* @VIRTIO_CONFIG_STATUS_RESET, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @vtmmio_stop(i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @VIRTIO_CONFIG_STATUS_ACK, align 4
  %21 = call i32 @vtmmio_set_status(i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @VIRTIO_CONFIG_STATUS_DRIVER, align 4
  %24 = call i32 @vtmmio_set_status(i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @vtmmio_negotiate_features(i32 %25, i32 %26)
  %28 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %6, align 8
  %29 = load i32, i32* @VIRTIO_MMIO_GUEST_PAGE_SIZE, align 4
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  %31 = shl i32 1, %30
  %32 = call i32 @vtmmio_write_config_4(%struct.vtmmio_softc* %28, i32 %29, i32 %31)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %48, %18
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %6, align 8
  %36 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @vtmmio_reinit_virtqueue(%struct.vtmmio_softc* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %52

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %33

51:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %45
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.vtmmio_softc* @device_get_softc(i32) #1

declare dso_local i64 @vtmmio_get_status(i32) #1

declare dso_local i32 @vtmmio_stop(i32) #1

declare dso_local i32 @vtmmio_set_status(i32, i32) #1

declare dso_local i32 @vtmmio_negotiate_features(i32, i32) #1

declare dso_local i32 @vtmmio_write_config_4(%struct.vtmmio_softc*, i32, i32) #1

declare dso_local i32 @vtmmio_reinit_virtqueue(%struct.vtmmio_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
