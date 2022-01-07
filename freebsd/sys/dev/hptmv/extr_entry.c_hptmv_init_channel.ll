; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_hptmv_init_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_hptmv_init_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, %struct.mvDmaResponseQueueEntry*, i64, %struct.mvDmaRequestQueueEntry*, i64, i8*, i8* }
%struct.mvDmaResponseQueueEntry = type { i32 }
%struct.mvDmaRequestQueueEntry = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_9__** }

@MV_SATA_CHANNELS_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"RR18xx[%d]: Bad channelNum=%d\00", align 1
@gMvSataChannels = common dso_local global %struct.TYPE_9__** null, align 8
@MV_FALSE = common dso_local global i8* null, align 8
@MV_EDMA_REQUEST_QUEUE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"requestQueue addr is 0x%llX\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"RR18xx[%d]: request queue allocated isn't 1 K aligned, dma_addr=%llx channel=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"RR18xx[%d,%d]: request queue allocated: 0x%p\00", align 1
@MV_EDMA_RESPONSE_QUEUE_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [79 x i8] c"RR18xx[%d,%d]: response queue allocated isn't 256 byte aligned, dma_addr=%llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"RR18xx[%d,%d]: response queue allocated: 0x%p\00", align 1
@MV_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64)* @hptmv_init_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptmv_init_channel(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @MV_SATA_CHANNELS_NUM, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 (i8*, i64, i64, ...) @MV_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17)
  store i32 -1, i32* %3, align 4
  br label %150

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @gMvSataChannels, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %24
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %27
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %6, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %33, i64 %34
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i8*, i8** @MV_FALSE, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @MV_FALSE, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @MV_EDMA_REQUEST_QUEUE_SIZE, align 8
  %50 = mul i64 %48, %49
  %51 = add i64 %47, %50
  %52 = inttoptr i64 %51 to %struct.mvDmaRequestQueueEntry*
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 5
  store %struct.mvDmaRequestQueueEntry* %52, %struct.mvDmaRequestQueueEntry** %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @MV_EDMA_REQUEST_QUEUE_SIZE, align 8
  %61 = mul i64 %59, %60
  %62 = add i64 %58, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @KdPrint(i8* %66)
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 1023
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %19
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %5, align 8
  %79 = call i32 (i8*, i64, i64, ...) @MV_ERROR(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i64 %75, i64 %77, i64 %78)
  store i32 -1, i32* %3, align 4
  br label %150

80:                                               ; preds = %19
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 5
  %93 = load %struct.mvDmaRequestQueueEntry*, %struct.mvDmaRequestQueueEntry** %92, align 8
  %94 = bitcast %struct.mvDmaRequestQueueEntry* %93 to i8*
  %95 = call i32 @KdPrint(i8* %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* @MV_EDMA_RESPONSE_QUEUE_SIZE, align 8
  %101 = mul i64 %99, %100
  %102 = add i64 %98, %101
  %103 = inttoptr i64 %102 to %struct.mvDmaResponseQueueEntry*
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  store %struct.mvDmaResponseQueueEntry* %103, %struct.mvDmaResponseQueueEntry** %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* @MV_EDMA_RESPONSE_QUEUE_SIZE, align 8
  %112 = mul i64 %110, %111
  %113 = add i64 %109, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 255
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %80
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = call i32 (i8*, i64, i64, ...) @MV_ERROR(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i64 %122, i64 %123, i64 %125)
  store i32 -1, i32* %3, align 4
  br label %150

127:                                              ; preds = %80
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 4
  store i64 0, i64* %132, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %5, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  %140 = load %struct.mvDmaResponseQueueEntry*, %struct.mvDmaResponseQueueEntry** %139, align 8
  %141 = bitcast %struct.mvDmaResponseQueueEntry* %140 to i8*
  %142 = call i32 @KdPrint(i8* %141)
  %143 = load i32, i32* @MV_TRUE, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = load i64, i64* %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i32 %143, i32* %149, align 4
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %127, %118, %71, %12
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @MV_ERROR(i8*, i64, i64, ...) #1

declare dso_local i32 @KdPrint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
