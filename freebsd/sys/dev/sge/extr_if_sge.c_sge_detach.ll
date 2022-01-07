; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { i32, i64, i32, i32, i64, i64, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sge_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sge_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.sge_softc* @device_get_softc(i32 %5)
  store %struct.sge_softc* %6, %struct.sge_softc** %3, align 8
  %7 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %7, i32 0, i32 8
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @device_is_attached(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = call i32 @ether_ifdetach(%struct.ifnet* %14)
  %16 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %17 = call i32 @SGE_LOCK(%struct.sge_softc* %16)
  %18 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %19 = call i32 @sge_stop(%struct.sge_softc* %18)
  %20 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %21 = call i32 @SGE_UNLOCK(%struct.sge_softc* %20)
  %22 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %23 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %22, i32 0, i32 7
  %24 = call i32 @callout_drain(i32* %23)
  br label %25

25:                                               ; preds = %13, %1
  %26 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %27 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* %2, align 4
  %32 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %33 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @device_delete_child(i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @bus_generic_detach(i32 %37)
  %39 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %40 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load i32, i32* %2, align 4
  %45 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %46 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %49 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @bus_teardown_intr(i32 %44, i64 %47, i64 %50)
  br label %52

52:                                               ; preds = %43, %36
  %53 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %54 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @SYS_RES_IRQ, align 4
  %60 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %61 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @bus_release_resource(i32 %58, i32 %59, i32 0, i64 %62)
  br label %64

64:                                               ; preds = %57, %52
  %65 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %66 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i32, i32* %2, align 4
  %71 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %72 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %75 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %78 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @bus_release_resource(i32 %70, i32 %73, i32 %76, i64 %79)
  br label %81

81:                                               ; preds = %69, %64
  %82 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %83 = icmp ne %struct.ifnet* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = call i32 @if_free(%struct.ifnet* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %89 = call i32 @sge_dma_free(%struct.sge_softc* %88)
  %90 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %91 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %90, i32 0, i32 0
  %92 = call i32 @mtx_destroy(i32* %91)
  ret i32 0
}

declare dso_local %struct.sge_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @SGE_LOCK(%struct.sge_softc*) #1

declare dso_local i32 @sge_stop(%struct.sge_softc*) #1

declare dso_local i32 @SGE_UNLOCK(%struct.sge_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @sge_dma_free(%struct.sge_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
