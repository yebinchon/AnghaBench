; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_fw_stats_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_fw_stats_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i32, i64, i64, %struct.TYPE_2__, %struct.bxe_fw_stats_data*, %struct.bxe_fw_stats_req* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.bxe_fw_stats_data = type { i32 }
%struct.bxe_fw_stats_req = type { i32 }

@STATS_QUERY_CMD_COUNT = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"stats fw_stats_num %d num_groups %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fw stats\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"statistics request base address set to %#jx\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"statistics data base address set to %#jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_alloc_fw_stats_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_alloc_fw_stats_mem(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %7 = call i32 @BXE_NUM_ETH_QUEUES(%struct.bxe_softc* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 2, %8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @STATS_QUERY_CMD_COUNT, align 4
  %16 = sdiv i32 %14, %15
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @STATS_QUERY_CMD_COUNT, align 4
  %21 = srem i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = add nsw i32 %16, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %27 = load i32, i32* @DBG_LOAD, align 4
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %29 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %26, i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = add i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %39 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = add i64 12, %42
  %44 = trunc i64 %43 to i32
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %46 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %49 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %52 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %50, %53
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %56 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %55, i32 0, i32 5
  %57 = call i64 @bxe_dma_alloc(%struct.bxe_softc* %47, i32 %54, %struct.TYPE_2__* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %1
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %61 = call i32 @bxe_free_fw_stats_mem(%struct.bxe_softc* %60)
  store i32 -1, i32* %2, align 4
  br label %114

62:                                               ; preds = %1
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %64 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.bxe_fw_stats_req*
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %69 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %68, i32 0, i32 7
  store %struct.bxe_fw_stats_req* %67, %struct.bxe_fw_stats_req** %69, align 8
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %71 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %75 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %74, i32 0, i32 4
  store i64 %73, i64* %75, align 8
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %77 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %82 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = bitcast i32* %85 to %struct.bxe_fw_stats_data*
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %88 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %87, i32 0, i32 6
  store %struct.bxe_fw_stats_data* %86, %struct.bxe_fw_stats_data** %88, align 8
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %90 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %94 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %92, %96
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %99 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %101 = load i32, i32* @DBG_LOAD, align 4
  %102 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %103 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %100, i32 %101, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %108 = load i32, i32* @DBG_LOAD, align 4
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %110 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %107, i32 %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %62, %59
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @BXE_NUM_ETH_QUEUES(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, ...) #1

declare dso_local i64 @bxe_dma_alloc(%struct.bxe_softc*, i32, %struct.TYPE_2__*, i8*) #1

declare dso_local i32 @bxe_free_fw_stats_mem(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
