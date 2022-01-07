; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_pmf_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_pmf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@DBG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pmf %d\0A\00", align 1
@INT_BLOCK_HC = common dso_local global i64 0, align 8
@HC_REG_TRAILING_EDGE_0 = common dso_local global i64 0, align 8
@HC_REG_LEADING_EDGE_0 = common dso_local global i64 0, align 8
@IGU_REG_TRAILING_EDGE_LATCH = common dso_local global i64 0, align 8
@IGU_REG_LEADING_EDGE_LATCH = common dso_local global i64 0, align 8
@STATS_EVENT_PMF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_pmf_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_pmf_update(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %6 = call i32 @SC_PORT(%struct.bxe_softc* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %11 = load i32, i32* @DBG_INTR, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BLOGD(%struct.bxe_softc* %10, i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 (...) @mb()
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %19 = call i32 @SC_VN(%struct.bxe_softc* %18)
  %20 = add nsw i32 %19, 4
  %21 = shl i32 1, %20
  %22 = or i32 65295, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INT_BLOCK_HC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %1
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %31 = load i64, i64* @HC_REG_TRAILING_EDGE_0, align 8
  %32 = load i32, i32* %3, align 4
  %33 = mul nsw i32 %32, 8
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @REG_WR(%struct.bxe_softc* %30, i64 %35, i32 %36)
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %39 = load i64, i64* @HC_REG_LEADING_EDGE_0, align 8
  %40 = load i32, i32* %3, align 4
  %41 = mul nsw i32 %40, 8
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @REG_WR(%struct.bxe_softc* %38, i64 %43, i32 %44)
  br label %60

46:                                               ; preds = %1
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %48 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %52 = load i64, i64* @IGU_REG_TRAILING_EDGE_LATCH, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @REG_WR(%struct.bxe_softc* %51, i64 %52, i32 %53)
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %56 = load i64, i64* @IGU_REG_LEADING_EDGE_LATCH, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @REG_WR(%struct.bxe_softc* %55, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %46
  br label %60

60:                                               ; preds = %59, %29
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %62 = load i32, i32* @STATS_EVENT_PMF, align 4
  %63 = call i32 @bxe_stats_handle(%struct.bxe_softc* %61, i32 %62)
  ret void
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @SC_VN(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_stats_handle(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
