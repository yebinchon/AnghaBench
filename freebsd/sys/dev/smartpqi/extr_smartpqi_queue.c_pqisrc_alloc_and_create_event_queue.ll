; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_queue.c_pqisrc_alloc_and_create_event_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_queue.c_pqisrc_alloc_and_create_event_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__, %struct.TYPE_12__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32*, i32, i64 }
%struct.TYPE_12__ = type { i8*, i32, i8*, i32, i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQISRC_NUM_EVENT_Q_ELEM = common dso_local global i32 0, align 4
@PQISRC_EVENT_Q_ELEM_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"event_queue\00", align 1
@PQI_OPQ_ELEM_ARRAY_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to Allocate Event Q ret : %d\0A\00", align 1
@PQI_ADDR_ALIGN_MASK_64 = common dso_local global i32 0, align 4
@PQI_OP_EVENT_QUEUE_ID = common dso_local global i32 0, align 4
@PQI_ADDR_ALIGN_MASK_4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to Create EventQ %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"OUT failed %d\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_alloc_and_create_event_queue(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %13 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  %14 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @PQISRC_NUM_EVENT_Q_ELEM, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PQISRC_EVENT_Q_ELEM_SIZE, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @PQI_OPQ_ELEM_ARRAY_ALIGN, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = call i32 @os_dma_mem_alloc(%struct.TYPE_10__* %36, %struct.TYPE_12__* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @DBG_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %119

45:                                               ; preds = %1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %7, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8* %60, i8** %11, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %12, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PQI_ADDR_ALIGN_MASK_64, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @ASSERT(i32 %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @FILL_QUEUE_ARRAY_ADDR(%struct.TYPE_11__* %70, i8* %71, i32 %72)
  %74 = load i32, i32* @PQI_OP_EVENT_QUEUE_ID, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @PQISRC_EVENT_Q_ELEM_SIZE, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i8*, i8** %11, align 8
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  store i32* %87, i32** %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 6
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PQI_ADDR_ALIGN_MASK_4, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @ASSERT(i32 %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %103 = call i32 @pqisrc_create_op_obq(%struct.TYPE_10__* %101, %struct.TYPE_11__* %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %45
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @DBG_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %116

111:                                              ; preds = %45
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 5
  store i32 1, i32* %113, align 8
  %114 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %123

116:                                              ; preds = %106
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = call i32 @pqisrc_destroy_event_queue(%struct.TYPE_10__* %117)
  br label %119

119:                                              ; preds = %116, %42
  %120 = load i32, i32* %4, align 4
  %121 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %119, %111
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @DBG_FUNC(i8*, ...) #1

declare dso_local i32 @os_dma_mem_alloc(%struct.TYPE_10__*, %struct.TYPE_12__*) #1

declare dso_local i32 @DBG_ERR(i8*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @FILL_QUEUE_ARRAY_ADDR(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @pqisrc_create_op_obq(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @pqisrc_destroy_event_queue(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
