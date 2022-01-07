; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_hw_new_cq_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_hw_new_cq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__**, i32*, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__*, i32, i32*, i32 }

@SLI_MAX_CQ_SET_COUNT = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@SLI_QTYPE_CQ = common dso_local global i32 0, align 4
@hw_q_t = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to create CQ Set. \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hw_new_cq_set(%struct.TYPE_10__** %0, %struct.TYPE_11__** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %18, i64 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %11, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  store i32* %24, i32** %12, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  %25 = load i32, i32* @SLI_MAX_CQ_SET_COUNT, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca i32*, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %29 = load i32, i32* @SLI_MAX_CQ_SET_COUNT, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32*, i64 %30, align 16
  store i64 %30, i64* %16, align 8
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %40, %4
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %37, i64 %38
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %39, align 8
  br label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %10, align 8
  br label %32

43:                                               ; preds = %32
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %110, %43
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %113

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @OCS_M_ZERO, align 4
  %53 = load i32, i32* @OCS_M_NOWAIT, align 4
  %54 = or i32 %52, %53
  %55 = call %struct.TYPE_11__* @ocs_malloc(i32 %51, i32 48, i32 %54)
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %13, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %57 = icmp eq %struct.TYPE_11__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %157

59:                                               ; preds = %48
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %61 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %61, i64 %62
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %63, align 8
  %64 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %64, i64 %65
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %69, align 8
  %70 = load i32, i32* @SLI_QTYPE_CQ, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = sext i32 %75 to i64
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  store i32* %89, i32** %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds i32*, i32** %28, i64 %95
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %97, i64 %98
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds i32*, i32** %31, i64 %103
  store i32* %102, i32** %104, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  %107 = load i32, i32* @hw_q_t, align 4
  %108 = load i32, i32* @link, align 4
  %109 = call i32 @ocs_list_init(i32* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %59
  %111 = load i64, i64* %10, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %10, align 8
  br label %44

113:                                              ; preds = %44
  %114 = load i32*, i32** %12, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i64 @sli_cq_alloc_set(i32* %114, i32** %28, i64 %115, i64 %116, i32** %31)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = call i32 @ocs_log_err(i32* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %157

121:                                              ; preds = %113
  store i64 0, i64* %10, align 8
  br label %122

122:                                              ; preds = %153, %121
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %156

126:                                              ; preds = %122
  %127 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %127, i64 %128
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %132, align 8
  %134 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %134, i64 %135
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %133, i64 %139
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %140, align 8
  %141 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %141, i64 %142
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %149 = load i64, i64* %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %148, i64 %149
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = call i32 @ocs_list_add_tail(i32* %147, %struct.TYPE_11__* %151)
  br label %153

153:                                              ; preds = %126
  %154 = load i64, i64* %10, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %10, align 8
  br label %122

156:                                              ; preds = %122
  store i64 0, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %185

157:                                              ; preds = %119, %58
  store i64 0, i64* %10, align 8
  br label %158

158:                                              ; preds = %181, %157
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* %8, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %162, label %184

162:                                              ; preds = %158
  %163 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %163, i64 %164
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = icmp ne %struct.TYPE_11__* %166, null
  br i1 %167, label %168, label %180

168:                                              ; preds = %162
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %173 = load i64, i64* %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %172, i64 %173
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = call i32 @ocs_free(i32 %171, %struct.TYPE_11__* %175, i32 48)
  %177 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %178 = load i64, i64* %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %177, i64 %178
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %179, align 8
  br label %180

180:                                              ; preds = %168, %162
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %10, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %10, align 8
  br label %158

184:                                              ; preds = %158
  store i64 -1, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %185

185:                                              ; preds = %184, %156
  %186 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i64, i64* %5, align 8
  ret i64 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_11__* @ocs_malloc(i32, i32, i32) #2

declare dso_local i32 @ocs_list_init(i32*, i32, i32) #2

declare dso_local i64 @sli_cq_alloc_set(i32*, i32**, i64, i64, i32**) #2

declare dso_local i32 @ocs_log_err(i32*, i8*) #2

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @ocs_free(i32, %struct.TYPE_11__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
