; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_negotiate_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_negotiate_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtmmio_softc = type { i32 }

@VIRTIO_MMIO_HOST_FEATURES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"negotiated\00", align 1
@VIRTIO_MMIO_GUEST_FEATURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vtmmio_negotiate_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtmmio_negotiate_features(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vtmmio_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.vtmmio_softc* @device_get_softc(i32 %8)
  store %struct.vtmmio_softc* %9, %struct.vtmmio_softc** %5, align 8
  %10 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %5, align 8
  %11 = load i32, i32* @VIRTIO_MMIO_HOST_FEATURES, align 4
  %12 = call i32 @vtmmio_read_config_4(%struct.vtmmio_softc* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @vtmmio_describe_features(%struct.vtmmio_softc* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @virtqueue_filter_features(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %5, align 8
  %23 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @vtmmio_describe_features(%struct.vtmmio_softc* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %5, align 8
  %28 = load i32, i32* @VIRTIO_MMIO_GUEST_FEATURES, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @vtmmio_write_config_4(%struct.vtmmio_softc* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local %struct.vtmmio_softc* @device_get_softc(i32) #1

declare dso_local i32 @vtmmio_read_config_4(%struct.vtmmio_softc*, i32) #1

declare dso_local i32 @vtmmio_describe_features(%struct.vtmmio_softc*, i8*, i32) #1

declare dso_local i32 @virtqueue_filter_features(i32) #1

declare dso_local i32 @vtmmio_write_config_4(%struct.vtmmio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
