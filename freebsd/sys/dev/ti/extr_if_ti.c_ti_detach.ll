; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32, i64, i64, i64, i64, i64, i32, i32, %struct.ifnet*, i64 }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ti mutex not initialized\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ti_softc* @device_get_softc(i32 %5)
  store %struct.ti_softc* %6, %struct.ti_softc** %3, align 8
  %7 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %7, i32 0, i32 9
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %12, i32 0, i32 9
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @destroy_dev(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %17, i32 0, i32 0
  %19 = call i32 @mtx_initialized(i32* %18)
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %21, i32 0, i32 8
  %23 = load %struct.ifnet*, %struct.ifnet** %22, align 8
  store %struct.ifnet* %23, %struct.ifnet** %4, align 8
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @device_is_attached(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = call i32 @ether_ifdetach(%struct.ifnet* %28)
  %30 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %31 = call i32 @TI_LOCK(%struct.ti_softc* %30)
  %32 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %33 = call i32 @ti_stop(%struct.ti_softc* %32)
  %34 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %35 = call i32 @TI_UNLOCK(%struct.ti_softc* %34)
  br label %36

36:                                               ; preds = %27, %16
  %37 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %37, i32 0, i32 7
  %39 = call i32 @callout_drain(i32* %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @bus_generic_detach(i32 %40)
  %42 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %43 = call i32 @ti_dma_free(%struct.ti_softc* %42)
  %44 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %44, i32 0, i32 6
  %46 = call i32 @ifmedia_removeall(i32* %45)
  %47 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %36
  %52 = load i32, i32* %2, align 4
  %53 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @bus_teardown_intr(i32 %52, i64 %55, i64 %58)
  br label %60

60:                                               ; preds = %51, %36
  %61 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @SYS_RES_IRQ, align 4
  %68 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @bus_release_resource(i32 %66, i32 %67, i32 0, i64 %70)
  br label %72

72:                                               ; preds = %65, %60
  %73 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @SYS_RES_MEMORY, align 4
  %80 = call i32 @PCIR_BAR(i32 0)
  %81 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @bus_release_resource(i32 %78, i32 %79, i32 %80, i64 %83)
  br label %85

85:                                               ; preds = %77, %72
  %86 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %87 = icmp ne %struct.ifnet* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = call i32 @if_free(%struct.ifnet* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %93 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %98 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @M_DEVBUF, align 4
  %101 = call i32 @free(i64 %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %91
  %103 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %104 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %109 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @M_DEVBUF, align 4
  %112 = call i32 @free(i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %107, %102
  %114 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %115 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %114, i32 0, i32 0
  %116 = call i32 @mtx_destroy(i32* %115)
  ret i32 0
}

declare dso_local %struct.ti_softc* @device_get_softc(i32) #1

declare dso_local i32 @destroy_dev(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @TI_LOCK(%struct.ti_softc*) #1

declare dso_local i32 @ti_stop(%struct.ti_softc*) #1

declare dso_local i32 @TI_UNLOCK(%struct.ti_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @ti_dma_free(%struct.ti_softc*) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
