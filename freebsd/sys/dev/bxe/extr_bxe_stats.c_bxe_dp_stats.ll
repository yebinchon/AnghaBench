; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_dp_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_dp_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@DBG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [154 x i8] c"dumping stats:\0A  fw_stats_req\0A    hdr\0A      cmd_num %d\0A      reserved0 %d\0A      drv_stats_counter %d\0A      reserved1 %d\0A      stats_counters_addrs %x %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"query[%d]\0A  kind %d\0A  index %d\0A  funcID %d\0A  reserved %d\0A  address %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_dp_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_dp_stats(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %4 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %5 = load i32, i32* @DBG_STATS, align 4
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %19 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %31 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @BLOGD(%struct.bxe_softc* %4, i32 %5, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %17, i32 %23, i32 %29, i32 %36, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %121, %1
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %48 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %46, %52
  br i1 %53, label %54, label %124

54:                                               ; preds = %45
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %56 = load i32, i32* @DBG_STATS, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %59 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %69 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %79 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %89 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %99 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %110 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @BLOGD(%struct.bxe_softc* %55, i32 %56, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %67, i32 %77, i32 %87, i32 %97, i32 %108, i32 %119)
  br label %121

121:                                              ; preds = %54
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %45

124:                                              ; preds = %45
  ret void
}

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i32, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
