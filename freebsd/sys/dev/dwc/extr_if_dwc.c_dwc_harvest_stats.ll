; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_harvest_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_harvest_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i64, %struct.ifnet* }
%struct.ifnet = type { i32 }

@STATS_HARVEST_INTERVAL = common dso_local global i64 0, align 8
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@RXFRAMECOUNT_GB = common dso_local global i32 0, align 4
@IFCOUNTER_IMCASTS = common dso_local global i32 0, align 4
@RXMULTICASTFRAMES_G = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@RXOVERSIZE_G = common dso_local global i32 0, align 4
@RXUNDERSIZE_G = common dso_local global i32 0, align 4
@RXCRCERROR = common dso_local global i32 0, align 4
@RXALIGNMENTERROR = common dso_local global i32 0, align 4
@RXRUNTERROR = common dso_local global i32 0, align 4
@RXJABBERERROR = common dso_local global i32 0, align 4
@RXLENGTHERROR = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@TXFRAMECOUNT_G = common dso_local global i32 0, align 4
@IFCOUNTER_OMCASTS = common dso_local global i32 0, align 4
@TXMULTICASTFRAMES_G = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@TXOVERSIZE_G = common dso_local global i32 0, align 4
@TXEXCESSDEF = common dso_local global i32 0, align 4
@TXCARRIERERR = common dso_local global i32 0, align 4
@TXUNDERFLOWERROR = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@TXEXESSCOL = common dso_local global i32 0, align 4
@TXLATECOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_softc*)* @dwc_harvest_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_harvest_stats(%struct.dwc_softc* %0) #0 {
  %2 = alloca %struct.dwc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.dwc_softc* %0, %struct.dwc_softc** %2, align 8
  %4 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @STATS_HARVEST_INTERVAL, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %101

11:                                               ; preds = %1
  %12 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %13 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %14, i32 0, i32 1
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %3, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %19 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %20 = load i32, i32* @RXFRAMECOUNT_GB, align 4
  %21 = call i64 @READ4(%struct.dwc_softc* %19, i32 %20)
  %22 = call i32 @if_inc_counter(%struct.ifnet* %17, i32 %18, i64 %21)
  %23 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %24 = load i32, i32* @IFCOUNTER_IMCASTS, align 4
  %25 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %26 = load i32, i32* @RXMULTICASTFRAMES_G, align 4
  %27 = call i64 @READ4(%struct.dwc_softc* %25, i32 %26)
  %28 = call i32 @if_inc_counter(%struct.ifnet* %23, i32 %24, i64 %27)
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %31 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %32 = load i32, i32* @RXOVERSIZE_G, align 4
  %33 = call i64 @READ4(%struct.dwc_softc* %31, i32 %32)
  %34 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %35 = load i32, i32* @RXUNDERSIZE_G, align 4
  %36 = call i64 @READ4(%struct.dwc_softc* %34, i32 %35)
  %37 = add nsw i64 %33, %36
  %38 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %39 = load i32, i32* @RXCRCERROR, align 4
  %40 = call i64 @READ4(%struct.dwc_softc* %38, i32 %39)
  %41 = add nsw i64 %37, %40
  %42 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %43 = load i32, i32* @RXALIGNMENTERROR, align 4
  %44 = call i64 @READ4(%struct.dwc_softc* %42, i32 %43)
  %45 = add nsw i64 %41, %44
  %46 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %47 = load i32, i32* @RXRUNTERROR, align 4
  %48 = call i64 @READ4(%struct.dwc_softc* %46, i32 %47)
  %49 = add nsw i64 %45, %48
  %50 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %51 = load i32, i32* @RXJABBERERROR, align 4
  %52 = call i64 @READ4(%struct.dwc_softc* %50, i32 %51)
  %53 = add nsw i64 %49, %52
  %54 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %55 = load i32, i32* @RXLENGTHERROR, align 4
  %56 = call i64 @READ4(%struct.dwc_softc* %54, i32 %55)
  %57 = add nsw i64 %53, %56
  %58 = call i32 @if_inc_counter(%struct.ifnet* %29, i32 %30, i64 %57)
  %59 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %60 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %61 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %62 = load i32, i32* @TXFRAMECOUNT_G, align 4
  %63 = call i64 @READ4(%struct.dwc_softc* %61, i32 %62)
  %64 = call i32 @if_inc_counter(%struct.ifnet* %59, i32 %60, i64 %63)
  %65 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %66 = load i32, i32* @IFCOUNTER_OMCASTS, align 4
  %67 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %68 = load i32, i32* @TXMULTICASTFRAMES_G, align 4
  %69 = call i64 @READ4(%struct.dwc_softc* %67, i32 %68)
  %70 = call i32 @if_inc_counter(%struct.ifnet* %65, i32 %66, i64 %69)
  %71 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %72 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %73 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %74 = load i32, i32* @TXOVERSIZE_G, align 4
  %75 = call i64 @READ4(%struct.dwc_softc* %73, i32 %74)
  %76 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %77 = load i32, i32* @TXEXCESSDEF, align 4
  %78 = call i64 @READ4(%struct.dwc_softc* %76, i32 %77)
  %79 = add nsw i64 %75, %78
  %80 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %81 = load i32, i32* @TXCARRIERERR, align 4
  %82 = call i64 @READ4(%struct.dwc_softc* %80, i32 %81)
  %83 = add nsw i64 %79, %82
  %84 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %85 = load i32, i32* @TXUNDERFLOWERROR, align 4
  %86 = call i64 @READ4(%struct.dwc_softc* %84, i32 %85)
  %87 = add nsw i64 %83, %86
  %88 = call i32 @if_inc_counter(%struct.ifnet* %71, i32 %72, i64 %87)
  %89 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %90 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %91 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %92 = load i32, i32* @TXEXESSCOL, align 4
  %93 = call i64 @READ4(%struct.dwc_softc* %91, i32 %92)
  %94 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %95 = load i32, i32* @TXLATECOL, align 4
  %96 = call i64 @READ4(%struct.dwc_softc* %94, i32 %95)
  %97 = add nsw i64 %93, %96
  %98 = call i32 @if_inc_counter(%struct.ifnet* %89, i32 %90, i64 %97)
  %99 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %100 = call i32 @dwc_clear_stats(%struct.dwc_softc* %99)
  br label %101

101:                                              ; preds = %11, %10
  ret void
}

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i64) #1

declare dso_local i64 @READ4(%struct.dwc_softc*, i32) #1

declare dso_local i32 @dwc_clear_stats(%struct.dwc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
