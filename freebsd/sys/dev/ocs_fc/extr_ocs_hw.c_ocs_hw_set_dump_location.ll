; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_dump_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_dump_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }

@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"FW version is too old for this feature\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"function only valid for pci function 0, %d passed\0A\00", align 1
@OCS_MIN_DMA_ALIGNMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"SGE DMA allocation failed\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OCS_CMD_POLL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"ocs_hw_command returns %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"sli_cmd_common_set_dump_location failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_set_dump_location(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_15__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %35, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %212

36:                                               ; preds = %4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ocs_get_bus_dev_func(i32 %39, i64* %10, i64* %11, i64* %12)
  %41 = load i64, i64* %9, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %52, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %212

53:                                               ; preds = %43, %36
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %173

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 16
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %17, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %56
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = call i32 @ocs_dma_free(i32 %70, %struct.TYPE_15__* %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @OCS_MIN_DMA_ALIGNMENT, align 4
  %81 = call i64 @ocs_dma_alloc(i32 %76, %struct.TYPE_15__* %78, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %67
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %88, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %212

89:                                               ; preds = %67
  br label %90

90:                                               ; preds = %89, %56
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ocs_memset(%struct.TYPE_13__* %94, i32 0, i32 %98)
  %100 = load i32, i32* %17, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %18, align 8
  store i32 0, i32* %19, align 4
  br label %108

108:                                              ; preds = %159, %90
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %162

112:                                              ; preds = %108
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ocs_addr32_hi(i32 %118)
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %121 = load i32, i32* %19, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 3
  store i32 %119, i32* %124, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ocs_addr32_lo(i32 %130)
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %133 = load i32, i32* %19, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  store i32 %131, i32* %136, align 4
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* %7, align 4
  %139 = sub nsw i32 %138, 1
  %140 = icmp eq i32 %137, %139
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 1, i32 0
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %144 = load i32, i32* %19, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  store i32 %142, i32* %147, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  store i32 %153, i32* %158, align 4
  br label %159

159:                                              ; preds = %112
  %160 = load i32, i32* %19, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %19, align 4
  br label %108

162:                                              ; preds = %108
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = bitcast i64* %24 to i8*
  %166 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %167 = load i32, i32* @FALSE, align 4
  %168 = load i32, i32* @TRUE, align 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = load i64, i64* %9, align 8
  %172 = call i64 @sli_cmd_common_set_dump_location(i32* %164, i8* %165, i32 %166, i32 %167, i32 %168, %struct.TYPE_15__* %170, i64 %171)
  store i64 %172, i64* %13, align 8
  br label %188

173:                                              ; preds = %53
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = bitcast i64* %24 to i8*
  %182 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %183 = load i32, i32* @FALSE, align 4
  %184 = load i32, i32* @FALSE, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %186 = load i64, i64* %9, align 8
  %187 = call i64 @sli_cmd_common_set_dump_location(i32* %180, i8* %181, i32 %182, i32 %183, i32 %184, %struct.TYPE_15__* %185, i64 %186)
  store i64 %187, i64* %13, align 8
  br label %188

188:                                              ; preds = %173, %162
  %189 = load i64, i64* %13, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %188
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %193 = load i32, i32* @OCS_CMD_POLL, align 4
  %194 = call i64 @ocs_hw_command(%struct.TYPE_14__* %192, i64* %24, i32 %193, i32* null, i32* null)
  store i64 %194, i64* %13, align 8
  %195 = load i64, i64* %13, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i64, i64* %13, align 8
  %202 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %200, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %201)
  br label %203

203:                                              ; preds = %197, %191
  br label %210

204:                                              ; preds = %188
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %207, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %209 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %209, i64* %13, align 8
  br label %210

210:                                              ; preds = %204, %203
  %211 = load i64, i64* %13, align 8
  store i64 %211, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %212

212:                                              ; preds = %210, %83, %46, %30
  %213 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %213)
  %214 = load i64, i64* %5, align 8
  ret i64 %214
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ocs_log_test(i32, i8*, ...) #2

declare dso_local i32 @ocs_get_bus_dev_func(i32, i64*, i64*, i64*) #2

declare dso_local i32 @ocs_dma_free(i32, %struct.TYPE_15__*) #2

declare dso_local i64 @ocs_dma_alloc(i32, %struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #2

declare dso_local i32 @ocs_memset(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @ocs_addr32_hi(i32) #2

declare dso_local i32 @ocs_addr32_lo(i32) #2

declare dso_local i64 @sli_cmd_common_set_dump_location(i32*, i8*, i32, i32, i32, %struct.TYPE_15__*, i64) #2

declare dso_local i64 @ocs_hw_command(%struct.TYPE_14__*, i64*, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
