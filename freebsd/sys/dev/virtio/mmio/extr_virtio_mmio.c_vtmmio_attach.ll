; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtmmio_softc = type { i32*, i32*, i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot allocate memory window.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@VIRTIO_CONFIG_STATUS_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot create child device.\0A\00", align 1
@VIRTIO_CONFIG_STATUS_FAILED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vtmmio_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vtmmio_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.vtmmio_softc* @device_get_softc(i32* %7)
  store %struct.vtmmio_softc* %8, %struct.vtmmio_softc** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %4, align 8
  %11 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %10, i32 0, i32 2
  store i32* %9, i32** %11, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @SYS_RES_MEMORY, align 4
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call i32 @bus_alloc_resource_any(i32* %12, i32 %13, i32* %6, i32 %14)
  %16 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %4, align 8
  %17 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %4, align 8
  %21 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @device_printf(i32* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %54

30:                                               ; preds = %1
  %31 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %4, align 8
  %32 = call i32 @vtmmio_reset(%struct.vtmmio_softc* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @VIRTIO_CONFIG_STATUS_ACK, align 4
  %35 = call i32 @vtmmio_set_status(i32* %33, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32* @device_add_child(i32* %36, i32* null, i32 -1)
  store i32* %37, i32** %5, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @device_printf(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @VIRTIO_CONFIG_STATUS_FAILED, align 4
  %44 = call i32 @vtmmio_set_status(i32* %42, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @vtmmio_detach(i32* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %2, align 4
  br label %54

48:                                               ; preds = %30
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %4, align 8
  %51 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  %52 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %4, align 8
  %53 = call i32 @vtmmio_probe_and_attach_child(%struct.vtmmio_softc* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %39, %26
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.vtmmio_softc* @device_get_softc(i32*) #1

declare dso_local i32 @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @vtmmio_reset(%struct.vtmmio_softc*) #1

declare dso_local i32 @vtmmio_set_status(i32*, i32) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @vtmmio_detach(i32*) #1

declare dso_local i32 @vtmmio_probe_and_attach_child(%struct.vtmmio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
