; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg_fdt.c_dwc_otg_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg_fdt.c_dwc_otg_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_fdt_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc_otg_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc_otg_fdt_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.dwc_otg_fdt_softc* @device_get_softc(i32 %4)
  store %struct.dwc_otg_fdt_softc* %5, %struct.dwc_otg_fdt_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @device_delete_children(i32 %6)
  %8 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %3, align 8
  %9 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %3, align 8
  %15 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %3, align 8
  %21 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %20, i32 0, i32 0
  %22 = call i32 @dwc_otg_uninit(%struct.TYPE_2__* %21)
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %3, align 8
  %25 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %3, align 8
  %29 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @bus_teardown_intr(i32 %23, i32* %27, i32* %31)
  %33 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %3, align 8
  %34 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %19, %13, %1
  %37 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %3, align 8
  %38 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @SYS_RES_IRQ, align 4
  %45 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %3, align 8
  %46 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @bus_release_resource(i32 %43, i32 %44, i32 0, i32* %48)
  %50 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %3, align 8
  %51 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %42, %36
  %54 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %3, align 8
  %55 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @SYS_RES_MEMORY, align 4
  %62 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %3, align 8
  %63 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @bus_release_resource(i32 %60, i32 %61, i32 0, i32* %65)
  %67 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %3, align 8
  %68 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %59, %53
  %71 = load %struct.dwc_otg_fdt_softc*, %struct.dwc_otg_fdt_softc** %3, align 8
  %72 = getelementptr inbounds %struct.dwc_otg_fdt_softc, %struct.dwc_otg_fdt_softc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @usb_bus_mem_free_all(i32* %73, i32* null)
  ret i32 0
}

declare dso_local %struct.dwc_otg_fdt_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @dwc_otg_uninit(%struct.TYPE_2__*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_bus_mem_free_all(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
