; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_read_dev_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_read_dev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtmmio_softc = type { i32 }

@VIRTIO_MMIO_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*, i32)* @vtmmio_read_dev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtmmio_read_dev_config(i32 %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vtmmio_softc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.vtmmio_softc* @device_get_softc(i32 %13)
  store %struct.vtmmio_softc* %14, %struct.vtmmio_softc** %9, align 8
  %15 = load i64, i64* @VIRTIO_MMIO_CONFIG, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %11, align 8
  br label %20

20:                                               ; preds = %28, %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  store i32 1, i32* %12, align 4
  %24 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @vtmmio_read_config_1(%struct.vtmmio_softc* %24, i64 %25)
  %27 = load i32*, i32** %11, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %12, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %20

40:                                               ; preds = %20
  ret void
}

declare dso_local %struct.vtmmio_softc* @device_get_softc(i32) #1

declare dso_local i32 @vtmmio_read_config_1(%struct.vtmmio_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
