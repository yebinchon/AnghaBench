; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_mmio_platform.c_virtio_mmio_platform_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_mmio_platform.c_virtio_mmio_platform_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_mmio_platform_softc = type { i32, i8*, i32, i32 }
%struct.fdt_ic = type { i32, i8* }

@.str = private unnamed_addr constant [9 x i8] c"pio-send\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pio-recv\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@fdt_ic_list_head = common dso_local global i32 0, align 4
@fdt_ics = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @virtio_mmio_platform_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_mmio_platform_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.virtio_mmio_platform_softc*, align 8
  %5 = alloca %struct.fdt_ic*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.virtio_mmio_platform_softc* @device_get_softc(i8* %7)
  store %struct.virtio_mmio_platform_softc* %8, %struct.virtio_mmio_platform_softc** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %4, align 8
  %11 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %4, align 8
  %13 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %4, align 8
  %15 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %4, align 8
  %16 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %15, i32 0, i32 3
  %17 = call i64 @setup_pio(%struct.virtio_mmio_platform_softc* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %4, align 8
  %21 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %4, align 8
  %22 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %21, i32 0, i32 2
  %23 = call i64 @setup_pio(%struct.virtio_mmio_platform_softc* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %1
  %26 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %4, align 8
  %27 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.virtio_mmio_platform_softc*, %struct.virtio_mmio_platform_softc** %4, align 8
  %30 = getelementptr inbounds %struct.virtio_mmio_platform_softc, %struct.virtio_mmio_platform_softc* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @ofw_bus_get_node(i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %51

36:                                               ; preds = %28
  %37 = load i32, i32* @M_DEVBUF, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = load i32, i32* @M_ZERO, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.fdt_ic* @malloc(i32 16, i32 %37, i32 %40)
  store %struct.fdt_ic* %41, %struct.fdt_ic** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.fdt_ic*, %struct.fdt_ic** %5, align 8
  %44 = getelementptr inbounds %struct.fdt_ic, %struct.fdt_ic* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = load %struct.fdt_ic*, %struct.fdt_ic** %5, align 8
  %47 = getelementptr inbounds %struct.fdt_ic, %struct.fdt_ic* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.fdt_ic*, %struct.fdt_ic** %5, align 8
  %49 = load i32, i32* @fdt_ics, align 4
  %50 = call i32 @SLIST_INSERT_HEAD(i32* @fdt_ic_list_head, %struct.fdt_ic* %48, i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %36, %34
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.virtio_mmio_platform_softc* @device_get_softc(i8*) #1

declare dso_local i64 @setup_pio(%struct.virtio_mmio_platform_softc*, i8*, i32*) #1

declare dso_local i32 @ofw_bus_get_node(i8*) #1

declare dso_local %struct.fdt_ic* @malloc(i32, i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.fdt_ic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
