; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_cq_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_cq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_22__**, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i64, i64, i64, i64 }

@UINT16_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"mq\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wq\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"unknown idx=%#x rid=%#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rq\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"xabt\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unhandled ctype=%#x rid=%#x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocs_hw_cq_process(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %15 = load i64, i64* @UINT16_MAX, align 8
  store i64 %15, i64* %6, align 8
  store i64 0, i64* %9, align 8
  %16 = call i64 (...) @ocs_msectime()
  store i64 %16, i64* %10, align 8
  br label %17

17:                                               ; preds = %159, %40, %2
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %24 = call i32 @sli_queue_read(i32* %19, %struct.TYPE_24__* %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %160

27:                                               ; preds = %17
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %34 = call i32 @sli_cq_parse(i32* %29, %struct.TYPE_24__* %32, i32* %33, i32* %7, i64* %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, -2
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %17

41:                                               ; preds = %37
  br label %160

42:                                               ; preds = %27
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %121 [
    i32 135, label %44
    i32 134, label %50
    i32 133, label %58
    i32 132, label %63
    i32 130, label %68
    i32 129, label %76
    i32 131, label %108
    i32 128, label %114
  ]

44:                                               ; preds = %42
  %45 = call i32 @CPUTRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %49 = call i32 @sli_cqe_async(i32* %47, i32* %48)
  br label %128

50:                                               ; preds = %42
  %51 = call i32 @CPUTRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ocs_hw_mq_process(%struct.TYPE_21__* %52, i32 %53, i32 %56)
  br label %128

58:                                               ; preds = %42
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %62 = call i32 @ocs_hw_rqpair_process_auto_xfr_rdy_cmd(%struct.TYPE_21__* %59, %struct.TYPE_23__* %60, i32* %61)
  br label %128

63:                                               ; preds = %42
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %67 = call i32 @ocs_hw_rqpair_process_auto_xfr_rdy_data(%struct.TYPE_21__* %64, %struct.TYPE_23__* %65, i32* %66)
  br label %128

68:                                               ; preds = %42
  %69 = call i32 @CPUTRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %73 = load i32, i32* %8, align 4
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @ocs_hw_wq_process(%struct.TYPE_21__* %70, %struct.TYPE_23__* %71, i32* %72, i32 %73, i64 %74)
  br label %128

76:                                               ; preds = %42
  %77 = load i64, i64* %6, align 8
  store i64 %77, i64* %12, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @ocs_hw_queue_hash_find(i32 %80, i64 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @unlikely(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %76
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @ocs_log_err(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %92, i64 %93)
  br label %128

95:                                               ; preds = %76
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %98, i64 %100
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %101, align 8
  store %struct.TYPE_22__* %102, %struct.TYPE_22__** %14, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @hw_wq_submit_pending(%struct.TYPE_22__* %103, i32 %106)
  br label %128

108:                                              ; preds = %42
  %109 = call i32 @CPUTRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %113 = call i32 @ocs_hw_rqpair_process_rq(%struct.TYPE_21__* %110, %struct.TYPE_23__* %111, i32* %112)
  br label %128

114:                                              ; preds = %42
  %115 = call i32 @CPUTRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %119 = load i64, i64* %6, align 8
  %120 = call i32 @ocs_hw_xabt_process(%struct.TYPE_21__* %116, %struct.TYPE_23__* %117, i32* %118, i64 %119)
  br label %128

121:                                              ; preds = %42
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @ocs_log_test(i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %125, i64 %126)
  br label %128

128:                                              ; preds = %121, %114, %108, %95, %88, %68, %63, %58, %50, %44
  %129 = load i64, i64* %9, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %9, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %131, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %160

139:                                              ; preds = %128
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp sge i64 %144, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %139
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %155, align 8
  %157 = load i32, i32* @FALSE, align 4
  %158 = call i32 @sli_queue_arm(i32* %153, %struct.TYPE_24__* %156, i32 %157)
  br label %159

159:                                              ; preds = %151, %139
  br label %17

160:                                              ; preds = %138, %41, %17
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %164, align 8
  %166 = load i32, i32* @TRUE, align 4
  %167 = call i32 @sli_queue_arm(i32* %162, %struct.TYPE_24__* %165, i32 %166)
  %168 = load i64, i64* %9, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %168, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %160
  %176 = load i64, i64* %9, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 3
  store i64 %176, i64* %180, align 8
  br label %181

181:                                              ; preds = %175, %160
  %182 = call i64 (...) @ocs_msectime()
  %183 = load i64, i64* %10, align 8
  %184 = sub nsw i64 %182, %183
  store i64 %184, i64* %11, align 8
  %185 = load i64, i64* %11, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = icmp sgt i64 %185, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %181
  %193 = load i64, i64* %11, align 8
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 4
  store i64 %193, i64* %197, align 8
  br label %198

198:                                              ; preds = %192, %181
  ret void
}

declare dso_local i64 @ocs_msectime(...) #1

declare dso_local i32 @sli_queue_read(i32*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @sli_cq_parse(i32*, %struct.TYPE_24__*, i32*, i32*, i64*) #1

declare dso_local i32 @CPUTRACE(i8*) #1

declare dso_local i32 @sli_cqe_async(i32*, i32*) #1

declare dso_local i32 @ocs_hw_mq_process(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ocs_hw_rqpair_process_auto_xfr_rdy_cmd(%struct.TYPE_21__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @ocs_hw_rqpair_process_auto_xfr_rdy_data(%struct.TYPE_21__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @ocs_hw_wq_process(%struct.TYPE_21__*, %struct.TYPE_23__*, i32*, i32, i64) #1

declare dso_local i32 @ocs_hw_queue_hash_find(i32, i64) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*, i32, i64) #1

declare dso_local i32 @hw_wq_submit_pending(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ocs_hw_rqpair_process_rq(%struct.TYPE_21__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @ocs_hw_xabt_process(%struct.TYPE_21__*, %struct.TYPE_23__*, i32*, i64) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32, i64) #1

declare dso_local i32 @sli_queue_arm(i32*, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
