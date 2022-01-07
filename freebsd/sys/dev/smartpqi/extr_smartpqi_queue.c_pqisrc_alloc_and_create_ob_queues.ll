; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_queue.c_pqisrc_alloc_and_create_ob_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_queue.c_pqisrc_alloc_and_create_ob_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_12__ = type { i8*, i32, i8*, i32, i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@PQI_MIN_OP_OB_QUEUE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"op_ob_queue\00", align 1
@PQI_OPQ_ELEM_ARRAY_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Failed to Allocate Operational OBQ memory ret : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"softs->num_op_obq %d\0A\00", align 1
@PQI_ADDR_ALIGN_MASK_64 = common dso_local global i32 0, align 4
@PQI_ADDR_ALIGN_MASK_4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to Create OP OBQ %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"OUT failed %d\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_alloc_and_create_ob_queues(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %16 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %16, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %17 = load i32, i32* @PQI_MIN_OP_OB_QUEUE_ID, align 4
  store i32 %17, i32* %12, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ALIGN_BOUNDARY(i32 %24, i32 4)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @PQI_OPQ_ELEM_ARRAY_ALIGN, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 5
  %61 = call i32 @os_dma_mem_alloc(%struct.TYPE_10__* %58, %struct.TYPE_12__* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %1
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @DBG_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %194

67:                                               ; preds = %1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %6, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8* %82, i8** %11, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @DBG_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %185, %67
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %188

93:                                               ; preds = %87
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 %98
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %13, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @PQI_ADDR_ALIGN_MASK_64, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @ASSERT(i32 %105)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @FILL_QUEUE_ARRAY_ADDR(%struct.TYPE_11__* %107, i8* %108, i32 %109)
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %123

119:                                              ; preds = %93
  %120 = load i32, i32* %15, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %128

123:                                              ; preds = %93
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %119
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = add i64 %140, %143
  %145 = trunc i64 %144 to i32
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 4
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = bitcast i8* %152 to i32*
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 5
  store i32* %153, i32** %155, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @PQI_ADDR_ALIGN_MASK_4, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = call i32 @ASSERT(i32 %163)
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %167 = call i32 @pqisrc_create_op_obq(%struct.TYPE_10__* %165, %struct.TYPE_11__* %166)
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %128
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @DBG_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  br label %191

175:                                              ; preds = %128
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 6
  store i32 1, i32* %177, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i8*, i8** %6, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %6, align 8
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %175
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %15, align 4
  br label %87

188:                                              ; preds = %87
  %189 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %190 = load i32, i32* %4, align 4
  store i32 %190, i32* %2, align 4
  br label %198

191:                                              ; preds = %170
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %193 = call i32 @pqisrc_destroy_op_ob_queues(%struct.TYPE_10__* %192)
  br label %194

194:                                              ; preds = %191, %64
  %195 = load i32, i32* %4, align 4
  %196 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %194, %188
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @DBG_FUNC(i8*, ...) #1

declare dso_local i32 @ALIGN_BOUNDARY(i32, i32) #1

declare dso_local i32 @os_dma_mem_alloc(%struct.TYPE_10__*, %struct.TYPE_12__*) #1

declare dso_local i32 @DBG_ERR(i8*, i32) #1

declare dso_local i32 @DBG_INFO(i8*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @FILL_QUEUE_ARRAY_ADDR(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @pqisrc_create_op_obq(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @pqisrc_destroy_op_ob_queues(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
