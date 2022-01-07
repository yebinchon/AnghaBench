; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arge_softc = type { i32, i32, i64, i32, i64, i32, i64, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"arge mutex not initialized\00", align 1
@taskqueue_swi = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arge_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arge_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.arge_softc* @device_get_softc(i32 %5)
  store %struct.arge_softc* %6, %struct.arge_softc** %3, align 8
  %7 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %7, i32 0, i32 9
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %10, i32 0, i32 1
  %12 = call i32 @mtx_initialized(i32* %11)
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @device_is_attached(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %19 = call i32 @ARGE_LOCK(%struct.arge_softc* %18)
  %20 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %21 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %23 = call i32 @arge_stop(%struct.arge_softc* %22)
  %24 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %25 = call i32 @ARGE_UNLOCK(%struct.arge_softc* %24)
  %26 = load i32, i32* @taskqueue_swi, align 4
  %27 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %28 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %27, i32 0, i32 8
  %29 = call i32 @taskqueue_drain(i32 %26, i32* %28)
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = call i32 @ether_ifdetach(%struct.ifnet* %30)
  br label %32

32:                                               ; preds = %17, %1
  %33 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %34 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %2, align 4
  %39 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %40 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @device_delete_child(i32 %38, i64 %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %45 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* %2, align 4
  %50 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %51 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @device_delete_child(i32 %49, i64 %52)
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @bus_generic_detach(i32 %55)
  %57 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %58 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load i32, i32* %2, align 4
  %63 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %64 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %67 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @bus_teardown_intr(i32 %62, i32 %65, i64 %68)
  br label %70

70:                                               ; preds = %61, %54
  %71 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %72 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @SYS_RES_MEMORY, align 4
  %78 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %79 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %82 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @bus_release_resource(i32 %76, i32 %77, i32 %80, i64 %83)
  br label %85

85:                                               ; preds = %75, %70
  %86 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %87 = icmp ne %struct.ifnet* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = call i32 @if_free(%struct.ifnet* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %93 = call i32 @arge_dma_free(%struct.arge_softc* %92)
  %94 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %95 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %94, i32 0, i32 1
  %96 = call i32 @mtx_destroy(i32* %95)
  ret i32 0
}

declare dso_local %struct.arge_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @ARGE_LOCK(%struct.arge_softc*) #1

declare dso_local i32 @arge_stop(%struct.arge_softc*) #1

declare dso_local i32 @ARGE_UNLOCK(%struct.arge_softc*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @arge_dma_free(%struct.arge_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
