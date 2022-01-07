; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { %struct.vte_hw_stats }
%struct.vte_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VTE_MECISR = common dso_local global i32 0, align 4
@VTE_CNT_RX_DONE = common dso_local global i32 0, align 4
@VTE_CNT_MECNT0 = common dso_local global i32 0, align 4
@VTE_CNT_MECNT1 = common dso_local global i32 0, align 4
@VTE_CNT_MECNT2 = common dso_local global i32 0, align 4
@VTE_CNT_MECNT3 = common dso_local global i32 0, align 4
@VTE_CNT_TX_DONE = common dso_local global i32 0, align 4
@VTE_CNT_MECNT4 = common dso_local global i32 0, align 4
@VTE_CNT_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vte_softc*)* @vte_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_stats_update(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  %3 = alloca %struct.vte_hw_stats*, align 8
  %4 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %5 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %6 = call i32 @VTE_LOCK_ASSERT(%struct.vte_softc* %5)
  %7 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %7, i32 0, i32 0
  store %struct.vte_hw_stats* %8, %struct.vte_hw_stats** %3, align 8
  %9 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %10 = load i32, i32* @VTE_MECISR, align 4
  %11 = call i32 @CSR_READ_2(%struct.vte_softc* %9, i32 %10)
  %12 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %13 = load i32, i32* @VTE_CNT_RX_DONE, align 4
  %14 = call i32 @CSR_READ_2(%struct.vte_softc* %12, i32 %13)
  %15 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %3, align 8
  %16 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %20 = load i32, i32* @VTE_CNT_MECNT0, align 4
  %21 = call i32 @CSR_READ_2(%struct.vte_softc* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 8
  %24 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %3, align 8
  %25 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 255
  %30 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %3, align 8
  %31 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %35 = load i32, i32* @VTE_CNT_MECNT1, align 4
  %36 = call i32 @CSR_READ_2(%struct.vte_softc* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 8
  %39 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %3, align 8
  %40 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 255
  %45 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %3, align 8
  %46 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %50 = load i32, i32* @VTE_CNT_MECNT2, align 4
  %51 = call i32 @CSR_READ_2(%struct.vte_softc* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 255
  %54 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %3, align 8
  %55 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %59 = load i32, i32* @VTE_CNT_MECNT3, align 4
  %60 = call i32 @CSR_READ_2(%struct.vte_softc* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = ashr i32 %61, 8
  %63 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %3, align 8
  %64 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, 255
  %69 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %3, align 8
  %70 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %74 = load i32, i32* @VTE_CNT_TX_DONE, align 4
  %75 = call i32 @CSR_READ_2(%struct.vte_softc* %73, i32 %74)
  %76 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %3, align 8
  %77 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %81 = load i32, i32* @VTE_CNT_MECNT4, align 4
  %82 = call i32 @CSR_READ_2(%struct.vte_softc* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = ashr i32 %83, 8
  %85 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %3, align 8
  %86 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, 255
  %91 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %3, align 8
  %92 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %96 = load i32, i32* @VTE_CNT_PAUSE, align 4
  %97 = call i32 @CSR_READ_2(%struct.vte_softc* %95, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = ashr i32 %98, 8
  %100 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %3, align 8
  %101 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %100, i32 0, i32 11
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, 255
  %106 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %3, align 8
  %107 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %106, i32 0, i32 12
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, %105
  store i32 %109, i32* %107, align 4
  ret void
}

declare dso_local i32 @VTE_LOCK_ASSERT(%struct.vte_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.vte_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
