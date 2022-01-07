; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_eq_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_eq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@OCS_HW_TIMECHECK_ITERATIONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bad CQ_ID %#06x\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_eq_process(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 16, i1 false)
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* @OCS_HW_TIMECHECK_ITERATIONS, align 8
  store i64 %19, i64* %10, align 8
  %20 = call i64 (...) @ocs_msectime()
  store i64 %20, i64* %11, align 8
  %21 = call i32 @CPUTRACE(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %135, %67, %3
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %32 = call i32 @sli_queue_read(i32* %27, %struct.TYPE_11__* %30, i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %25, %22
  %36 = phi i1 [ false, %22 ], [ %34, %25 ]
  br i1 %36, label %37, label %136

37:                                               ; preds = %35
  store i32 0, i32* %13, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %41 = call i64 @sli_eq_parse(i32* %39, i32* %40, i32* %13)
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i64 @unlikely(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %37
  %46 = load i64, i64* %14, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  store i64 0, i64* %15, align 8
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i64, i64* %15, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ocs_hw_cq_process(%struct.TYPE_9__* %56, i32 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i64, i64* %15, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %15, align 8
  br label %49

67:                                               ; preds = %49
  br label %22

68:                                               ; preds = %45
  %69 = load i64, i64* %14, align 8
  store i64 %69, i64* %4, align 8
  br label %144

70:                                               ; preds = %37
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i64 @ocs_hw_queue_hash_find(i32 %73, i32 %74)
  store i64 %75, i64* %16, align 8
  %76 = load i64, i64* %16, align 8
  %77 = icmp sge i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i64 @likely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %70
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %16, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ocs_hw_cq_process(%struct.TYPE_9__* %82, i32 %88)
  br label %96

90:                                               ; preds = %70
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @ocs_log_err(i32 %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %81
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %102, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %97
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = load i64, i64* @FALSE, align 8
  %116 = call i32 @sli_queue_arm(i32* %111, %struct.TYPE_11__* %114, i64 %115)
  br label %117

117:                                              ; preds = %109, %97
  %118 = load i64, i64* %10, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = load i64, i64* %10, align 8
  %122 = add i64 %121, -1
  store i64 %122, i64* %10, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i64, i64* @OCS_HW_TIMECHECK_ITERATIONS, align 8
  store i64 %125, i64* %10, align 8
  %126 = call i64 (...) @ocs_msectime()
  %127 = load i64, i64* %11, align 8
  %128 = sub i64 %126, %127
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* %7, align 8
  %131 = icmp uge i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i64, i64* @TRUE, align 8
  store i64 %133, i64* %9, align 8
  br label %134

134:                                              ; preds = %132, %124
  br label %135

135:                                              ; preds = %134, %120, %117
  br label %22

136:                                              ; preds = %35
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = load i64, i64* @TRUE, align 8
  %143 = call i32 @sli_queue_eq_arm(i32* %138, %struct.TYPE_11__* %141, i64 %142)
  store i64 0, i64* %4, align 8
  br label %144

144:                                              ; preds = %136, %68
  %145 = load i64, i64* %4, align 8
  ret i64 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ocs_msectime(...) #2

declare dso_local i32 @CPUTRACE(i8*) #2

declare dso_local i32 @sli_queue_read(i32*, %struct.TYPE_11__*, i32*) #2

declare dso_local i64 @sli_eq_parse(i32*, i32*, i32*) #2

declare dso_local i64 @unlikely(i64) #2

declare dso_local i32 @ocs_hw_cq_process(%struct.TYPE_9__*, i32) #2

declare dso_local i64 @ocs_hw_queue_hash_find(i32, i32) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i32 @ocs_log_err(i32, i8*, i32) #2

declare dso_local i32 @sli_queue_arm(i32*, %struct.TYPE_11__*, i64) #2

declare dso_local i32 @sli_queue_eq_arm(i32*, %struct.TYPE_11__*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
