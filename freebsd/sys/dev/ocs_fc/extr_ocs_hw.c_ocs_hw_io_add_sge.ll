; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_add_sge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_add_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_12__*, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"bad parameter hw=%p io=%p addr=%lx length=%u\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"SGL full (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"length of SGE %d bigger than allowed %d\0A\00", align 1
@SLI4_SGE_TYPE_DATA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_io_add_sge(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %19, %16, %13, %4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32* [ %28, %25 ], [ null, %29 ]
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i32*, i8*, %struct.TYPE_14__*, ...) @ocs_log_err(i32* %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %32, %struct.TYPE_15__* %33, i64 %34, i32 %35)
  %37 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %37, i64* %5, align 8
  br label %164

38:                                               ; preds = %19
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %41
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = call i64 @ocs_hw_io_overflow_sgl(%struct.TYPE_14__* %51, %struct.TYPE_15__* %52)
  %54 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.TYPE_14__*
  %64 = call i32 (i32*, i8*, %struct.TYPE_14__*, ...) @ocs_log_err(i32* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %63)
  %65 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %65, i64* %5, align 8
  br label %164

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66, %41, %38
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = call i32 @sli_get_max_sge(i32* %70)
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to %struct.TYPE_14__*
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = call i32 @sli_get_max_sge(i32* %81)
  %83 = call i32 (i32*, i8*, %struct.TYPE_14__*, ...) @ocs_log_err(i32* %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_14__* %79, i32 %82)
  %84 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %84, i64* %5, align 8
  br label %164

85:                                               ; preds = %67
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %10, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 %93
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %10, align 8
  %96 = load i32, i32* @SLI4_SGE_TYPE_DATA, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @ocs_addr32_hi(i64 %99)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @ocs_addr32_lo(i64 %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @TRUE, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %85
  %123 = load i32, i32* @FALSE, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i64 -1
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  br label %127

127:                                              ; preds = %122, %85
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %132, %127
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = icmp ne %struct.TYPE_12__* %150, null
  br i1 %151, label %152, label %162

152:                                              ; preds = %138
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = mul i64 %155, 24
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  store i32 %157, i32* %161, align 4
  br label %162

162:                                              ; preds = %152, %138
  %163 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %163, i64* %5, align 8
  br label %164

164:                                              ; preds = %162, %73, %56, %30
  %165 = load i64, i64* %5, align 8
  ret i64 %165
}

declare dso_local i32 @ocs_log_err(i32*, i8*, %struct.TYPE_14__*, ...) #1

declare dso_local i64 @ocs_hw_io_overflow_sgl(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @sli_get_max_sge(i32*) #1

declare dso_local i32 @ocs_addr32_hi(i64) #1

declare dso_local i32 @ocs_addr32_lo(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
