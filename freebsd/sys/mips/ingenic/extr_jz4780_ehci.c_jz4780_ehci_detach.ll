; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_ehci.c_jz4780_ehci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_ehci.c_jz4780_ehci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_ehci_softc = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"Could not tear down irq, %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @jz4780_ehci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_ehci_detach(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.jz4780_ehci_softc*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call %struct.jz4780_ehci_softc* @device_get_softc(i64 %7)
  store %struct.jz4780_ehci_softc* %8, %struct.jz4780_ehci_softc** %3, align 8
  %9 = load %struct.jz4780_ehci_softc*, %struct.jz4780_ehci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.jz4780_ehci_softc, %struct.jz4780_ehci_softc* %9, i32 0, i32 2
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @device_detach(i64 %21)
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @device_delete_child(i64 %23, i64 %24)
  br label %26

26:                                               ; preds = %16, %1
  %27 = load i64, i64* %2, align 8
  %28 = call i32 @device_delete_children(i64 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = call i32 @ehci_detach(%struct.TYPE_4__* %39)
  %41 = load i64, i64* %2, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @bus_teardown_intr(i64 %41, i32* %44, i32* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load i64, i64* %2, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @device_printf(i64 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %38
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %55, %33, %26
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i64, i64* %2, align 8
  %65 = load i32, i32* @SYS_RES_IRQ, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @bus_release_resource(i64 %64, i32 %65, i32 0, i32* %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %63, %58
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i64, i64* %2, align 8
  %79 = load i32, i32* @SYS_RES_MEMORY, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @bus_release_resource(i64 %78, i32 %79, i32 0, i32* %82)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %77, %72
  %87 = load %struct.jz4780_ehci_softc*, %struct.jz4780_ehci_softc** %3, align 8
  %88 = getelementptr inbounds %struct.jz4780_ehci_softc, %struct.jz4780_ehci_softc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.jz4780_ehci_softc*, %struct.jz4780_ehci_softc** %3, align 8
  %93 = getelementptr inbounds %struct.jz4780_ehci_softc, %struct.jz4780_ehci_softc* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @clk_release(i64 %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @usb_bus_mem_free_all(%struct.TYPE_5__* %98, i32* @ehci_iterate_hw_softc)
  %100 = load %struct.jz4780_ehci_softc*, %struct.jz4780_ehci_softc** %3, align 8
  %101 = getelementptr inbounds %struct.jz4780_ehci_softc, %struct.jz4780_ehci_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @M_DEVBUF, align 4
  %104 = call i32 @free(i32 %102, i32 %103)
  ret i32 0
}

declare dso_local %struct.jz4780_ehci_softc* @device_get_softc(i64) #1

declare dso_local i32 @device_detach(i64) #1

declare dso_local i32 @device_delete_child(i64, i64) #1

declare dso_local i32 @device_delete_children(i64) #1

declare dso_local i32 @ehci_detach(%struct.TYPE_4__*) #1

declare dso_local i32 @bus_teardown_intr(i64, i32*, i32*) #1

declare dso_local i32 @device_printf(i64, i8*, i32) #1

declare dso_local i32 @bus_release_resource(i64, i32, i32, i32*) #1

declare dso_local i32 @clk_release(i64) #1

declare dso_local i32 @usb_bus_mem_free_all(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
