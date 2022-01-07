; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64, i32*, i32, i32, i32*, i32, i32 }

@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Starting detach...\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Cannot detach while VLANs are in use.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CHIP_TQ_NONE = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@BXE_STATE_CLOSED = common dso_local global i64 0, align 8
@UNLOAD_CLOSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BXE_STATE_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bxe_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.bxe_softc* @device_get_softc(i32 %6)
  store %struct.bxe_softc* %7, %struct.bxe_softc** %4, align 8
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %9 = load i32, i32* @DBG_LOAD, align 4
  %10 = call i32 @BLOGD(%struct.bxe_softc* %8, i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %12 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @if_vlantrunkinuse(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %22 = call i32 @BLOGE(%struct.bxe_softc* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EBUSY, align 4
  store i32 %23, i32* %2, align 4
  br label %108

24:                                               ; preds = %16, %1
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %26 = call i32 @bxe_del_cdev(%struct.bxe_softc* %25)
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %28 = call i32 @bxe_periodic_stop(%struct.bxe_softc* %27)
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %30 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %29, i32 0, i32 6
  %31 = load i32, i32* @CHIP_TQ_NONE, align 4
  %32 = call i32 @atomic_store_rel_long(i32* %30, i32 %31)
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %34 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %24
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %39 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %42 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %41, i32 0, i32 5
  %43 = call i32 @taskqueue_drain(i32* %40, i32* %42)
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %45 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @taskqueue_free(i32* %46)
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %49 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %48, i32 0, i32 4
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* @taskqueue_thread, align 4
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %52 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %51, i32 0, i32 3
  %53 = call i32 @taskqueue_drain_timeout(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %37, %24
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %56 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BXE_STATE_CLOSED, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %62 = call i32 @BXE_CORE_LOCK(%struct.bxe_softc* %61)
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %64 = load i32, i32* @UNLOAD_CLOSE, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @bxe_nic_unload(%struct.bxe_softc* %63, i32 %64, i32 %65)
  %67 = load i64, i64* @BXE_STATE_DISABLED, align 8
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %69 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %71 = call i32 @BXE_CORE_UNLOCK(%struct.bxe_softc* %70)
  br label %72

72:                                               ; preds = %60, %54
  %73 = load i32*, i32** %5, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @ether_ifdetach(i32* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %80 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %79, i32 0, i32 2
  %81 = call i32 @ifmedia_removeall(i32* %80)
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %83 = call i32 @bxe_free_hsi_mem(%struct.bxe_softc* %82)
  %84 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %85 = call i32 @bxe_free_ilt_mem(%struct.bxe_softc* %84)
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %87 = call i32 @bxe_free_buf_rings(%struct.bxe_softc* %86)
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %89 = call i32 @bxe_interrupt_free(%struct.bxe_softc* %88)
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %91 = call i32 @bxe_destroy_fp_mutexs(%struct.bxe_softc* %90)
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %93 = call i32 @bxe_release_mutexes(%struct.bxe_softc* %92)
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %95 = call i32 @bxe_deallocate_bars(%struct.bxe_softc* %94)
  %96 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %97 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %78
  %101 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %102 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @if_free(i32* %103)
  br label %105

105:                                              ; preds = %100, %78
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @pci_disable_busmaster(i32 %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %105, %20
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.bxe_softc* @device_get_softc(i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*) #1

declare dso_local i64 @if_vlantrunkinuse(i32*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @bxe_del_cdev(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_periodic_stop(%struct.bxe_softc*) #1

declare dso_local i32 @atomic_store_rel_long(i32*, i32) #1

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @taskqueue_drain_timeout(i32, i32*) #1

declare dso_local i32 @BXE_CORE_LOCK(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_nic_unload(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @BXE_CORE_UNLOCK(%struct.bxe_softc*) #1

declare dso_local i32 @ether_ifdetach(i32*) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @bxe_free_hsi_mem(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_free_ilt_mem(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_free_buf_rings(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_interrupt_free(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_destroy_fp_mutexs(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_release_mutexes(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_deallocate_bars(%struct.bxe_softc*) #1

declare dso_local i32 @if_free(i32*) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
