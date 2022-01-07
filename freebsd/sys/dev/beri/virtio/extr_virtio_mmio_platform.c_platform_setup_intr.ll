; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_mmio_platform.c_platform_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_mmio_platform.c_platform_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_mmio_platform_softc = type { i32, i32*, i32, i64, i8*, i8* }

@platform_intr = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't allocate interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't setup the interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*)* @platform_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_setup_intr(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.virtio_mmio_platform_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.virtio_mmio_platform_softc* @device_get_softc(i32 %12)
  store %struct.virtio_mmio_platform_softc* %13, %struct.virtio_mmio_platform_softc** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %10, align 8
  %16 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %10, align 8
  %19 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %10, align 8
  %21 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %10, align 8
  %26 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @platform_intr, align 4
  %29 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %10, align 8
  %30 = call i32 @PIO_SETUP_IRQ(i32 %27, i32 %28, %struct.virtio_mmio_platform_softc* %29)
  store i32 0, i32* %5, align 4
  br label %71

31:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SYS_RES_IRQ, align 4
  %34 = load i32, i32* @RF_ACTIVE, align 4
  %35 = call i32 @bus_alloc_resource_any(i32 %32, i32 %33, i32* %11, i32 %34)
  %36 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %10, align 8
  %37 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %10, align 8
  %41 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %5, align 4
  br label %71

50:                                               ; preds = %31
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %10, align 8
  %53 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @INTR_TYPE_MISC, align 4
  %58 = load i32, i32* @INTR_MPSAFE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @platform_intr, align 4
  %61 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %10, align 8
  %62 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %10, align 8
  %63 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %62, i32 0, i32 0
  %64 = call i64 @bus_setup_intr(i32 %51, i32 %56, i32 %59, i32* null, i32 %60, %struct.virtio_mmio_platform_softc* %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %50
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %66, %46, %24
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.virtio_mmio_platform_softc* @device_get_softc(i32) #1

declare dso_local i32 @PIO_SETUP_IRQ(i32, i32, %struct.virtio_mmio_platform_softc*) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.virtio_mmio_platform_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
