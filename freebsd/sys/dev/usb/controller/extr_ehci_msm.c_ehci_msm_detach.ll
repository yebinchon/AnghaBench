; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_msm.c_ehci_msm_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_msm.c_ehci_msm_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"Could not tear down irq, %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ehci_msm_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_msm_detach(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call %struct.TYPE_5__* @device_get_softc(i64 %6)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @device_detach(i64 %18)
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @device_delete_child(i64 %20, i64 %21)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @device_delete_children(i64 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %55

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = call i32 @ehci_detach(%struct.TYPE_5__* %36)
  %38 = load i64, i64* %2, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @bus_teardown_intr(i64 %38, i32* %41, i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load i64, i64* %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @device_printf(i64 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %35
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %52, %30, %23
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i64, i64* %2, align 8
  %62 = load i32, i32* @SYS_RES_IRQ, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @bus_release_resource(i64 %61, i32 %62, i32 0, i32* %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %60, %55
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i64, i64* %2, align 8
  %76 = load i32, i32* @SYS_RES_MEMORY, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @bus_release_resource(i64 %75, i32 %76, i32 0, i32* %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %74, %69
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = call i32 @usb_bus_mem_free_all(%struct.TYPE_6__* %85, i32* @ehci_iterate_hw_softc)
  ret i32 0
}

declare dso_local %struct.TYPE_5__* @device_get_softc(i64) #1

declare dso_local i32 @device_detach(i64) #1

declare dso_local i32 @device_delete_child(i64, i64) #1

declare dso_local i32 @device_delete_children(i64) #1

declare dso_local i32 @ehci_detach(%struct.TYPE_5__*) #1

declare dso_local i32 @bus_teardown_intr(i64, i32*, i32*) #1

declare dso_local i32 @device_printf(i64, i8*, i32) #1

declare dso_local i32 @bus_release_resource(i64, i32, i32, i32*) #1

declare dso_local i32 @usb_bus_mem_free_all(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
