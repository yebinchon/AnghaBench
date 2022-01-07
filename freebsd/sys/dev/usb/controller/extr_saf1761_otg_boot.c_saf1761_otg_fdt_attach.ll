; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg_boot.c_saf1761_otg_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg_boot.c_saf1761_otg_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { %struct.TYPE_3__, i32, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32 }

@SOTG_HW_MODE_CTRL_DATA_BUS_WIDTH = common dso_local global i32 0, align 4
@SOTG_MAX_DEVICES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_PCI_MEMORY_ADDRESS = common dso_local global i64 0, align 8
@USB_PCI_MEMORY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@saf1761_otg_filter_interrupt = common dso_local global i32 0, align 4
@saf1761_otg_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Init failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"USB probe and attach failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @saf1761_otg_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_otg_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.saf1761_otg_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.saf1761_otg_softc* @device_get_softc(i32 %6)
  store %struct.saf1761_otg_softc* %7, %struct.saf1761_otg_softc** %4, align 8
  %8 = load i32, i32* @SOTG_HW_MODE_CTRL_DATA_BUS_WIDTH, align 4
  %9 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %10 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %15 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 8
  %17 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %18 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %21 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @SOTG_MAX_DEVICES, align 4
  %24 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %25 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %28 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 32, i32* %29, align 8
  %30 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %31 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @USB_GET_DMA_TAG(i32 %32)
  %34 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_3__* %31, i32 %33, i32* null)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %2, align 4
  br label %95

38:                                               ; preds = %1
  %39 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %40 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %39, i32 0, i32 4
  store i8* inttoptr (i64 1 to i8*), i8** %40, align 8
  %41 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %42 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %41, i32 0, i32 3
  store i8* inttoptr (i64 1 to i8*), i8** %42, align 8
  %43 = load i64, i64* @USB_PCI_MEMORY_ADDRESS, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %46 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @USB_PCI_MEMORY_SIZE, align 4
  %48 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %49 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32* @device_add_child(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1)
  %52 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %53 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32* %51, i32** %54, align 8
  %55 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %56 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %38
  br label %91

61:                                               ; preds = %38
  %62 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %63 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %67 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %66, i32 0, i32 0
  %68 = call i32 @device_set_ivars(i32* %65, %struct.TYPE_3__* %67)
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %71 = call i32 @device_set_interrupt(i32 %69, i32* @saf1761_otg_filter_interrupt, i32* @saf1761_otg_interrupt, %struct.saf1761_otg_softc* %70)
  %72 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %73 = call i32 @saf1761_otg_init(%struct.saf1761_otg_softc* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %61
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %91

79:                                               ; preds = %61
  %80 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %81 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @device_probe_and_attach(i32* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %91

90:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %95

91:                                               ; preds = %87, %76, %60
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @saf1761_otg_fdt_detach(i32 %92)
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %90, %36
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.saf1761_otg_softc* @device_get_softc(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @device_set_interrupt(i32, i32*, i32*, %struct.saf1761_otg_softc*) #1

declare dso_local i32 @saf1761_otg_init(%struct.saf1761_otg_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @saf1761_otg_fdt_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
