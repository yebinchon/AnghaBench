; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_event.c_pqisrc_report_event_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_event.c_pqisrc_report_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { i8*, i32, i64, %struct.TYPE_18__, i64, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c" IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"pqi_report_event_buf\00", align 1
@PQISRC_DEFAULT_DMA_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Failed to Allocate report event config buffer : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"buf_report_event.dma_addr\09= %p \0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"buf_report_event.virt_addr \09= %p \0A\00", align 1
@PQI_REQUEST_IU_REPORT_VENDOR_EVENT_CONFIG = common dso_local global i32 0, align 4
@PQI_MAX_EVENT_DESCRIPTORS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c" OUT\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Failed OUT\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_report_event_config(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32 16, i32* %9, align 4
  %10 = call i32 @memset(%struct.TYPE_24__* %6, i32 0, i32 48)
  %11 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @memset(%struct.TYPE_24__* %8, i32 0, i32 4)
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @PQISRC_DEFAULT_DMA_ALIGN, align 4
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 5
  store i32 %16, i32* %17, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = call i32 @os_dma_mem_alloc(%struct.TYPE_22__* %18, %struct.TYPE_24__* %8)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @DBG_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %89

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @DBG_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @DBG_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @PQI_REQUEST_IU_REPORT_VENDOR_EVENT_CONFIG, align 4
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = call i32 @pqi_event_configure(%struct.TYPE_22__* %37, %struct.TYPE_24__* %6, %struct.TYPE_24__* %8)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  br label %86

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %7, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PQI_MAX_EVENT_DESCRIPTORS, align 4
  %50 = call i32 @MIN(i32 %48, i32 %49)
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %78, %42
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %54
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  store i32 %69, i32* %77, align 4
  br label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %54

81:                                               ; preds = %54
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %83 = call i32 @os_dma_mem_free(%struct.TYPE_22__* %82, %struct.TYPE_24__* %8)
  %84 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %92

86:                                               ; preds = %41
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %88 = call i32 @os_dma_mem_free(%struct.TYPE_22__* %87, %struct.TYPE_24__* %8)
  br label %89

89:                                               ; preds = %86, %22
  %90 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %81
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @os_dma_mem_alloc(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i32 @DBG_ERR(i8*, i32) #1

declare dso_local i32 @DBG_INFO(i8*, i8*) #1

declare dso_local i32 @pqi_event_configure(%struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @os_dma_mem_free(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
