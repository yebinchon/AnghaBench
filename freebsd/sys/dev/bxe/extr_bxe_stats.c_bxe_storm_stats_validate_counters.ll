; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_storm_stats_validate_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_storm_stats_validate_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stats_counter }
%struct.stats_counter = type { i32, i32, i32, i32 }

@DBG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"stats not updated by xstorm, counter 0x%x != stats_counter 0x%x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"stats not updated by ustorm, counter 0x%x != stats_counter 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"stats not updated by cstorm, counter 0x%x != stats_counter 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"stats not updated by tstorm, counter 0x%x != stats_counter 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_storm_stats_validate_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_storm_stats_validate_counters(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.stats_counter*, align 8
  %5 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.stats_counter* %9, %struct.stats_counter** %4, align 8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = call i32 @BXE_STATS_LOCK(%struct.bxe_softc* %10)
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 1
  store i64 %15, i64* %5, align 8
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %17 = call i32 @BXE_STATS_UNLOCK(%struct.bxe_softc* %16)
  %18 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %19 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le16toh(i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %26 = load i32, i32* @DBG_STATS, align 4
  %27 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %28 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le16toh(i32 %29)
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @BLOGD(%struct.bxe_softc* %25, i32 %26, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %33)
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %98

37:                                               ; preds = %1
  %38 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %39 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le16toh(i32 %40)
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %46 = load i32, i32* @DBG_STATS, align 4
  %47 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %48 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le16toh(i32 %49)
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %52 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @BLOGD(%struct.bxe_softc* %45, i32 %46, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %53)
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %98

57:                                               ; preds = %37
  %58 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %59 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le16toh(i32 %60)
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %66 = load i32, i32* @DBG_STATS, align 4
  %67 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %68 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le16toh(i32 %69)
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %72 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @BLOGD(%struct.bxe_softc* %65, i32 %66, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %70, i64 %73)
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %98

77:                                               ; preds = %57
  %78 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %79 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le16toh(i32 %80)
  %82 = load i64, i64* %5, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %86 = load i32, i32* @DBG_STATS, align 4
  %87 = load %struct.stats_counter*, %struct.stats_counter** %4, align 8
  %88 = getelementptr inbounds %struct.stats_counter, %struct.stats_counter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @le16toh(i32 %89)
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %92 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @BLOGD(%struct.bxe_softc* %85, i32 %86, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i64 %90, i64 %93)
  %95 = load i32, i32* @EAGAIN, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %98

97:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %84, %64, %44, %24
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @BXE_STATS_LOCK(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_STATS_UNLOCK(%struct.bxe_softc*) #1

declare dso_local i64 @le16toh(i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
