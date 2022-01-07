; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_dmtf_clp_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_dmtf_clp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i32, i64, i32, i32 (%struct.TYPE_22__*, i32, i64, i32)*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_20__ = type { i32, i64, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"status=x%x/x%x/x%x  addl=x%x clp=x%x detail=x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Invalid response length: resp_len=%zu result len=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get status %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"CLP status indicates failure=%s\0A\00", align 1
@OCS_CMD_POLL = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32, %struct.TYPE_19__*, i8*)* @ocs_hw_dmtf_clp_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocs_hw_dmtf_clp_cb(%struct.TYPE_22__* %0, i32 %1, %struct.TYPE_19__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [8 x i8], align 1
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %17 = bitcast %struct.TYPE_19__* %16 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %10, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %11, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %12, align 8
  store i64 0, i64* %13, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %33, %27, %4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ocs_log_debug(i32 %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46, i32 %50, i32 %54, i32 %57, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %38
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %9, align 4
  br label %82

66:                                               ; preds = %38
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %9, align 4
  br label %81

77:                                               ; preds = %66
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %72
  br label %82

82:                                               ; preds = %81, %64
  br label %87

83:                                               ; preds = %33
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %13, align 8
  br label %87

87:                                               ; preds = %83, %82
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %142

91:                                               ; preds = %87
  %92 = load i64, i64* %13, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %91
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %13, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %94, %91
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %13, align 8
  %112 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %105, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %110, i64 %111)
  store i32 -1, i32* %9, align 4
  br label %142

113:                                              ; preds = %94
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %13, align 8
  %122 = call i32 @ocs_hw_clp_resp_get_value(%struct.TYPE_22__* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %115, i32 8, i32 %120, i64 %121)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %113
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  store i32 -1, i32* %9, align 4
  br label %142

131:                                              ; preds = %113
  %132 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %133 = call i64 @ocs_strcmp(i8* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %140 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %139)
  store i32 -1, i32* %9, align 4
  br label %142

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %135, %125, %102, %90
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 3
  %148 = load i32 (%struct.TYPE_22__*, i32, i64, i32)*, i32 (%struct.TYPE_22__*, i32, i64, i32)** %147, align 8
  %149 = icmp ne i32 (%struct.TYPE_22__*, i32, i64, i32)* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %142
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 3
  %153 = load i32 (%struct.TYPE_22__*, i32, i64, i32)*, i32 (%struct.TYPE_22__*, i32, i64, i32)** %152, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load i64, i64* %13, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 %153(%struct.TYPE_22__* %154, i32 %155, i64 %156, i32 %159)
  br label %161

161:                                              ; preds = %150, %142
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @OCS_CMD_POLL, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %172 = call i32 @ocs_free(i32 %170, %struct.TYPE_19__* %171, i32 40)
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %177 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %178 = call i32 @ocs_free(i32 %175, %struct.TYPE_19__* %176, i32 %177)
  br label %179

179:                                              ; preds = %167, %161
  ret void
}

declare dso_local i32 @ocs_log_debug(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*, ...) #1

declare dso_local i32 @ocs_hw_clp_resp_get_value(%struct.TYPE_22__*, i8*, i8*, i32, i32, i64) #1

declare dso_local i64 @ocs_strcmp(i8*, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
