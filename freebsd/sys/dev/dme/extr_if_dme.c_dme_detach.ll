; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme_softc = type { i64, i32, i64, i64, i64, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"dme mutex not initialized\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dme_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dme_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.dme_softc* @device_get_softc(i32 %5)
  store %struct.dme_softc* %6, %struct.dme_softc** %3, align 8
  %7 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %8 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %7, i32 0, i32 1
  %9 = call i32 @mtx_initialized(i32* %8)
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %12 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %11, i32 0, i32 7
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %4, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @device_is_attached(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %19 = call i32 @DME_LOCK(%struct.dme_softc* %18)
  %20 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %21 = call i32 @dme_stop(%struct.dme_softc* %20)
  %22 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %23 = call i32 @DME_UNLOCK(%struct.dme_softc* %22)
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = call i32 @ether_ifdetach(%struct.ifnet* %24)
  %26 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %27 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %26, i32 0, i32 6
  %28 = call i32 @callout_drain(i32* %27)
  br label %29

29:                                               ; preds = %17, %1
  %30 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %31 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %37 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @device_delete_child(i32 %35, i64 %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @bus_generic_detach(i32 %41)
  %43 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %44 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %49 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @regulator_release(i64 %50)
  br label %52

52:                                               ; preds = %47, %40
  %53 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %54 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* %2, align 4
  %59 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %60 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %63 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @bus_teardown_intr(i32 %58, i64 %61, i64 %64)
  br label %66

66:                                               ; preds = %57, %52
  %67 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %68 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @SYS_RES_IRQ, align 4
  %74 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %75 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @bus_release_resource(i32 %72, i32 %73, i32 0, i64 %76)
  br label %78

78:                                               ; preds = %71, %66
  %79 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %80 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @SYS_RES_MEMORY, align 4
  %86 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %87 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @bus_release_resource(i32 %84, i32 %85, i32 0, i64 %88)
  br label %90

90:                                               ; preds = %83, %78
  %91 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %92 = icmp ne %struct.ifnet* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = call i32 @if_free(%struct.ifnet* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %98 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %97, i32 0, i32 1
  %99 = call i32 @mtx_destroy(i32* %98)
  ret i32 0
}

declare dso_local %struct.dme_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @DME_LOCK(%struct.dme_softc*) #1

declare dso_local i32 @dme_stop(%struct.dme_softc*) #1

declare dso_local i32 @DME_UNLOCK(%struct.dme_softc*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @regulator_release(i64) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
