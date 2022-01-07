; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_event.c_pqisrc_set_event_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_event.c_pqisrc_set_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_28__ = type { i8*, i32, i64, %struct.TYPE_21__, %struct.TYPE_20__, i64, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c" IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"pqi_set_event_buf\00", align 1
@PQISRC_DEFAULT_DMA_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to Allocate set event config buffer : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"buf_set_event.dma_addr  \09= %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"buf_set_event.virt_addr \09= %p\0A\00", align 1
@PQI_REQUEST_IU_SET_EVENT_CONFIG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c" OUT\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Failed OUT\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_set_event_config(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_28__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i32 16, i32* %9, align 4
  %10 = call i32 @memset(%struct.TYPE_28__* %6, i32 0, i32 56)
  %11 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @memset(%struct.TYPE_28__* %8, i32 0, i32 4)
  %13 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @PQISRC_DEFAULT_DMA_ALIGN, align 4
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 6
  store i32 %16, i32* %17, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %19 = call i32 @os_dma_mem_alloc(%struct.TYPE_26__* %18, %struct.TYPE_28__* %8)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @DBG_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %124

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @DBG_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @DBG_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @PQI_REQUEST_IU_SET_EVENT_CONFIG, align 4
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %6, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %6, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %45, %struct.TYPE_27__** %7, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %107, %25
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %110

59:                                               ; preds = %52
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 1
  store i32 %68, i32* %75, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @pqisrc_event_type_to_event_index(i32 %83)
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %98

86:                                               ; preds = %59
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  store i64 %90, i64* %97, align 8
  br label %106

98:                                               ; preds = %59
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %98, %86
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %52

110:                                              ; preds = %52
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %112 = call i32 @pqi_event_configure(%struct.TYPE_26__* %111, %struct.TYPE_28__* %6, %struct.TYPE_28__* %8)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %121

116:                                              ; preds = %110
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %118 = call i32 @os_dma_mem_free(%struct.TYPE_26__* %117, %struct.TYPE_28__* %8)
  %119 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %127

121:                                              ; preds = %115
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %123 = call i32 @os_dma_mem_free(%struct.TYPE_26__* %122, %struct.TYPE_28__* %8)
  br label %124

124:                                              ; preds = %121, %22
  %125 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %126 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %124, %116
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @memset(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @os_dma_mem_alloc(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @DBG_ERR(i8*, i32) #1

declare dso_local i32 @DBG_INFO(i8*, i8*) #1

declare dso_local i32 @pqisrc_event_type_to_event_index(i32) #1

declare dso_local i32 @pqi_event_configure(%struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @os_dma_mem_free(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
