; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_free_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32*, i32, i32, i32*, i32*, i64, i32, i64, i64 }

@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Error deregistering bus, status=%d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@M_PVSCSI = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_softc*)* @pvscsi_free_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_free_all(%struct.pvscsi_softc* %0) #0 {
  %2 = alloca %struct.pvscsi_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %2, align 8
  %4 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %5 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %4, i32 0, i32 7
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %15 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @xpt_free_path(i64 %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %20 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @cam_sim_path(i64 %21)
  %23 = call i64 @xpt_bus_deregister(i32 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @CAM_REQ_CMP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %29 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %27, %18
  %34 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %35 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @cam_sim_free(i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %1
  %40 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %41 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %42 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pvscsi_dma_free_per_hcb(%struct.pvscsi_softc* %40, i32 %43)
  %45 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %46 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %51 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @M_PVSCSI, align 4
  %54 = call i32 @free(i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %39
  %56 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %57 = call i32 @pvscsi_free_rings(%struct.pvscsi_softc* %56)
  %58 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %59 = call i32 @pvscsi_free_interrupts(%struct.pvscsi_softc* %58)
  %60 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %61 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %66 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @bus_dma_tag_destroy(i32* %67)
  br label %69

69:                                               ; preds = %64, %55
  %70 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %71 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %76 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @bus_dma_tag_destroy(i32* %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %81 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %86 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SYS_RES_MEMORY, align 4
  %89 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %90 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %93 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @bus_release_resource(i32 %87, i32 %88, i32 %91, i32* %94)
  br label %96

96:                                               ; preds = %84, %79
  ret void
}

declare dso_local i32 @xpt_free_path(i64) #1

declare dso_local i64 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @cam_sim_free(i64, i32) #1

declare dso_local i32 @pvscsi_dma_free_per_hcb(%struct.pvscsi_softc*, i32) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @pvscsi_free_rings(%struct.pvscsi_softc*) #1

declare dso_local i32 @pvscsi_free_interrupts(%struct.pvscsi_softc*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
