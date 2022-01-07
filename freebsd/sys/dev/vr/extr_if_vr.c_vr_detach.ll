; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i32, i64, i32, i32, i64, i64, i64, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"vr mutex not initialized\00", align 1
@VR_F_DETACHED = common dso_local global i32 0, align 4
@taskqueue_fast = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vr_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vr_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vr_softc* @device_get_softc(i32 %5)
  store %struct.vr_softc* %6, %struct.vr_softc** %3, align 8
  %7 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %7, i32 0, i32 10
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %10, i32 0, i32 0
  %12 = call i32 @mtx_initialized(i32* %11)
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @device_is_attached(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %19 = call i32 @VR_LOCK(%struct.vr_softc* %18)
  %20 = load i32, i32* @VR_F_DETACHED, align 4
  %21 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %26 = call i32 @vr_stop(%struct.vr_softc* %25)
  %27 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %28 = call i32 @VR_UNLOCK(%struct.vr_softc* %27)
  %29 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %30 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %29, i32 0, i32 8
  %31 = call i32 @callout_drain(i32* %30)
  %32 = load i32, i32* @taskqueue_fast, align 4
  %33 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %34 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %33, i32 0, i32 7
  %35 = call i32 @taskqueue_drain(i32 %32, i32* %34)
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = call i32 @ether_ifdetach(%struct.ifnet* %36)
  br label %38

38:                                               ; preds = %17, %1
  %39 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %40 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %2, align 4
  %45 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %46 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @device_delete_child(i32 %44, i64 %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @bus_generic_detach(i32 %50)
  %52 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %53 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load i32, i32* %2, align 4
  %58 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %59 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %62 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @bus_teardown_intr(i32 %57, i64 %60, i64 %63)
  br label %65

65:                                               ; preds = %56, %49
  %66 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %67 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @SYS_RES_IRQ, align 4
  %73 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %74 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @bus_release_resource(i32 %71, i32 %72, i32 0, i64 %75)
  br label %77

77:                                               ; preds = %70, %65
  %78 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %79 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load i32, i32* %2, align 4
  %84 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %85 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %88 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %91 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @bus_release_resource(i32 %83, i32 %86, i32 %89, i64 %92)
  br label %94

94:                                               ; preds = %82, %77
  %95 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %96 = icmp ne %struct.ifnet* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %99 = call i32 @if_free(%struct.ifnet* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %102 = call i32 @vr_dma_free(%struct.vr_softc* %101)
  %103 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %104 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %103, i32 0, i32 0
  %105 = call i32 @mtx_destroy(i32* %104)
  ret i32 0
}

declare dso_local %struct.vr_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @VR_LOCK(%struct.vr_softc*) #1

declare dso_local i32 @vr_stop(%struct.vr_softc*) #1

declare dso_local i32 @VR_UNLOCK(%struct.vr_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @vr_dma_free(%struct.vr_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
