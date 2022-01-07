; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_ohci.c_ar71xx_ohci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_ohci.c_ar71xx_ohci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_ohci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32*, i32*, i32* }

@OHCI_CONTROL = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ohci_iterate_hw_softc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ar71xx_ohci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_ohci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar71xx_ohci_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ar71xx_ohci_softc* @device_get_softc(i32 %4)
  store %struct.ar71xx_ohci_softc* %5, %struct.ar71xx_ohci_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @device_delete_children(i32 %6)
  %8 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @OHCI_CONTROL, align 4
  %17 = call i32 @bus_space_write_4(i64 %11, i64 %15, i32 %16, i32 0)
  %18 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %1
  %24 = load i32, i32* %2, align 4
  %25 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @bus_teardown_intr(i32 %24, i32* %28, i32* %32)
  %34 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %23, %1
  %38 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %51 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %50, i32 0, i32 0
  %52 = call i32 @ohci_detach(%struct.TYPE_2__* %51)
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @SYS_RES_IRQ, align 4
  %55 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @bus_release_resource(i32 %53, i32 %54, i32 0, i32* %58)
  %60 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %49, %43, %37
  %64 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @SYS_RES_MEMORY, align 4
  %72 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @bus_release_resource(i32 %70, i32 %71, i32 0, i32* %75)
  %77 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %78 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i32* null, i32** %79, align 8
  %80 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %69, %63
  %87 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @usb_bus_mem_free_all(i32* %89, i32* @ohci_iterate_hw_softc)
  ret i32 0
}

declare dso_local %struct.ar71xx_ohci_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @bus_space_write_4(i64, i64, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @ohci_detach(%struct.TYPE_2__*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_bus_mem_free_all(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
