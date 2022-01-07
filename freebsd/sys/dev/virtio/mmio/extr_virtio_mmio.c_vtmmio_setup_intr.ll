; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtmmio_softc = type { i32, i32*, i32, i32* }

@vtmmio_vq_intr = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't allocate interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't setup the interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vtmmio_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtmmio_setup_intr(i32 %0, i32 %1) #0 {
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
  %11 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %6, align 8
  %12 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %6, align 8
  %17 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %6, align 8
  %20 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @vtmmio_vq_intr, align 4
  %23 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %6, align 8
  %24 = call i32 @VIRTIO_MMIO_SETUP_INTR(i32* %18, i32 %21, i32 %22, %struct.vtmmio_softc* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %69

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %2
  store i32 0, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SYS_RES_IRQ, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i32 @bus_alloc_resource_any(i32 %30, i32 %31, i32* %7, i32 %32)
  %34 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %6, align 8
  %35 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %6, align 8
  %39 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %3, align 4
  br label %69

48:                                               ; preds = %29
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %6, align 8
  %51 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @INTR_TYPE_MISC, align 4
  %56 = load i32, i32* @INTR_MPSAFE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @vtmmio_vq_intr, align 4
  %59 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %6, align 8
  %60 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %6, align 8
  %61 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %60, i32 0, i32 0
  %62 = call i64 @bus_setup_intr(i32 %49, i32 %54, i32 %57, i32* null, i32 %58, %struct.vtmmio_softc* %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %48
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %64, %44, %27
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.vtmmio_softc* @device_get_softc(i32) #1

declare dso_local i32 @VIRTIO_MMIO_SETUP_INTR(i32*, i32, i32, %struct.vtmmio_softc*) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.vtmmio_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
