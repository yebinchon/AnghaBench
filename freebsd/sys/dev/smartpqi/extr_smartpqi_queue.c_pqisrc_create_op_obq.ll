; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_queue.c_pqisrc_create_op_obq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_queue.c_pqisrc_create_op_obq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i32, i64, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__, %struct.TYPE_16__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32*, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQI_FUNCTION_CREATE_OPERATIONAL_OQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"admin_req.req_type.create_op_oq.qid : %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"admin_req.req_type.create_op_oq.intr_msg_num  : %x\0A\00", align 1
@PQISRC_PQI_REG_OFFSET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Error Status Descriptors\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %x \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"OUT ret : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_create_op_obq(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__, align 8
  %7 = alloca %struct.TYPE_21__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %9 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @memset(%struct.TYPE_21__* %6, i32 0, i32 48)
  %12 = call i32 @memset(%struct.TYPE_21__* %7, i32 0, i32 48)
  %13 = load i32, i32* @PQI_FUNCTION_CREATE_OPERATIONAL_OQ, align 4
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 5
  store i32 %29, i32* %32, align 4
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %47, 16
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @DBG_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DBG_INFO(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = call i32 @pqisrc_submit_admin_req(%struct.TYPE_19__* %62, %struct.TYPE_21__* %6, %struct.TYPE_21__* %7)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %2
  %68 = load i64, i64* @PQISRC_PQI_REG_OFFSET, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %68, %72
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = inttoptr i64 %82 to i32*
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  br label %105

86:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %87 = call i32 (i8*, ...) @DBG_WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %101, %86
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @DBG_WARN(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %88

104:                                              ; preds = %88
  br label %105

105:                                              ; preds = %104, %67
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @DBG_FUNC(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @DBG_INFO(i8*, i32) #1

declare dso_local i32 @pqisrc_submit_admin_req(%struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @DBG_WARN(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
