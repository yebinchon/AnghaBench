; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_map_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_map_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32 }
%struct.bnxt_bar_info = type { i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Bar %d already mapped\0A\00", align 1
@EDOOFUS = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"PCI BAR%d mapping failure\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_softc*, %struct.bnxt_bar_info*, i32, i32)* @bnxt_map_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_map_bar(%struct.bnxt_softc* %0, %struct.bnxt_bar_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_softc*, align 8
  %7 = alloca %struct.bnxt_bar_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %6, align 8
  store %struct.bnxt_bar_info* %1, %struct.bnxt_bar_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.bnxt_bar_info*, %struct.bnxt_bar_info** %7, align 8
  %12 = getelementptr inbounds %struct.bnxt_bar_info, %struct.bnxt_bar_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %17 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EDOOFUS, align 4
  store i32 %21, i32* %5, align 4
  br label %72

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @PCIR_BAR(i32 %23)
  %25 = load %struct.bnxt_bar_info*, %struct.bnxt_bar_info** %7, align 8
  %26 = getelementptr inbounds %struct.bnxt_bar_info, %struct.bnxt_bar_info* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @RF_ACTIVE, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @RF_SHAREABLE, align 4
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %22
  %35 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %36 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SYS_RES_MEMORY, align 4
  %39 = load %struct.bnxt_bar_info*, %struct.bnxt_bar_info** %7, align 8
  %40 = getelementptr inbounds %struct.bnxt_bar_info, %struct.bnxt_bar_info* %39, i32 0, i32 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32* @bus_alloc_resource_any(i32 %37, i32 %38, i32* %40, i32 %41)
  %43 = load %struct.bnxt_bar_info*, %struct.bnxt_bar_info** %7, align 8
  %44 = getelementptr inbounds %struct.bnxt_bar_info, %struct.bnxt_bar_info* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  %45 = icmp eq i32* %42, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %34
  %47 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %48 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %5, align 4
  br label %72

53:                                               ; preds = %34
  %54 = load %struct.bnxt_bar_info*, %struct.bnxt_bar_info** %7, align 8
  %55 = getelementptr inbounds %struct.bnxt_bar_info, %struct.bnxt_bar_info* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @rman_get_bustag(i32* %56)
  %58 = load %struct.bnxt_bar_info*, %struct.bnxt_bar_info** %7, align 8
  %59 = getelementptr inbounds %struct.bnxt_bar_info, %struct.bnxt_bar_info* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.bnxt_bar_info*, %struct.bnxt_bar_info** %7, align 8
  %61 = getelementptr inbounds %struct.bnxt_bar_info, %struct.bnxt_bar_info* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @rman_get_bushandle(i32* %62)
  %64 = load %struct.bnxt_bar_info*, %struct.bnxt_bar_info** %7, align 8
  %65 = getelementptr inbounds %struct.bnxt_bar_info, %struct.bnxt_bar_info* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.bnxt_bar_info*, %struct.bnxt_bar_info** %7, align 8
  %67 = getelementptr inbounds %struct.bnxt_bar_info, %struct.bnxt_bar_info* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @rman_get_size(i32* %68)
  %70 = load %struct.bnxt_bar_info*, %struct.bnxt_bar_info** %7, align 8
  %71 = getelementptr inbounds %struct.bnxt_bar_info, %struct.bnxt_bar_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %53, %46, %15
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_get_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
