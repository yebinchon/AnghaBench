; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_linkcfg_lancer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_linkcfg_lancer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__, %struct.TYPE_14__, i32, i8*, i32 }
%struct.TYPE_14__ = type { i64 }

@OCS_HW_DMTF_CLP_CMD_MAX = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to malloc cb_arg\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"set / OEMELX_LinkConfig=%s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@OCS_HW_DMTF_CLP_RSP_MAX = common dso_local global i64 0, align 8
@ocs_hw_linkcfg_dmtf_clp_cb = common dso_local global i32 0, align 4
@OCS_CMD_POLL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"CLP cmd=\22%s\22 failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i32, i32, i32, i8*)* @ocs_hw_set_linkcfg_lancer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_hw_set_linkcfg_lancer(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %18 = load i32, i32* @OCS_HW_DMTF_CLP_CMD_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  store i8* null, i8** %15, align 8
  %22 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %22, i64* %16, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i8* @ocs_hw_clp_from_linkcfg(i32 %23)
  store i8* %24, i8** %15, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OCS_M_NOWAIT, align 4
  %29 = call %struct.TYPE_13__* @ocs_malloc(i32 %27, i32 40, i32 %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %14, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %31 = icmp eq %struct.TYPE_13__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %5
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ocs_log_err(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %37 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %37, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %160

38:                                               ; preds = %5
  %39 = load i32, i32* @OCS_HW_DMTF_CLP_CMD_MAX, align 4
  %40 = load i8*, i8** %15, align 8
  %41 = call i32 @ocs_snprintf(i8* %21, i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = call i64 @ocs_strlen(i8* %21)
  %48 = add nsw i64 %47, 1
  %49 = call i64 @ocs_dma_alloc(i32 %44, %struct.TYPE_14__* %46, i64 %48, i32 4096)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %38
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ocs_log_err(i32 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %60 = call i32 @ocs_free(i32 %58, %struct.TYPE_13__* %59, i32 40)
  %61 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %61, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %160

62:                                               ; preds = %38
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @ocs_strlen(i8* %21)
  %68 = add nsw i64 %67, 1
  %69 = call i32 @ocs_memset(i64 %66, i32 0, i64 %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @ocs_strlen(i8* %21)
  %75 = call i32 @ocs_memcpy(i64 %73, i8* %21, i64 %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* @OCS_HW_DMTF_CLP_RSP_MAX, align 8
  %82 = call i64 @ocs_dma_alloc(i32 %78, %struct.TYPE_14__* %80, i64 %81, i32 4096)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %62
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ocs_log_err(i32 %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = call i32 @ocs_dma_free(i32 %91, %struct.TYPE_14__* %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %99 = call i32 @ocs_free(i32 %97, %struct.TYPE_13__* %98, i32 40)
  %100 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %100, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %160

101:                                              ; preds = %62
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @ocs_hw_linkcfg_dmtf_clp_cb, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %119 = call i64 @ocs_hw_exec_dmtf_clp_cmd(%struct.TYPE_12__* %111, %struct.TYPE_14__* %113, %struct.TYPE_14__* %115, i32 %116, i32 %117, %struct.TYPE_13__* %118)
  store i64 %119, i64* %16, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @OCS_CMD_POLL, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %101
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %158

127:                                              ; preds = %123, %101
  %128 = load i64, i64* %16, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i8*
  %139 = call i32 @ocs_log_test(i32 %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %130, %127
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = call i32 @ocs_dma_free(i32 %143, %struct.TYPE_14__* %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = call i32 @ocs_dma_free(i32 %149, %struct.TYPE_14__* %151)
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %157 = call i32 @ocs_free(i32 %155, %struct.TYPE_13__* %156, i32 40)
  br label %158

158:                                              ; preds = %140, %123
  %159 = load i64, i64* %16, align 8
  store i64 %159, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %160

160:                                              ; preds = %158, %84, %51, %32
  %161 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i64, i64* %6, align 8
  ret i64 %162
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @ocs_hw_clp_from_linkcfg(i32) #2

declare dso_local %struct.TYPE_13__* @ocs_malloc(i32, i32, i32) #2

declare dso_local i32 @ocs_log_err(i32, i8*) #2

declare dso_local i32 @ocs_snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @ocs_dma_alloc(i32, %struct.TYPE_14__*, i64, i32) #2

declare dso_local i64 @ocs_strlen(i8*) #2

declare dso_local i32 @ocs_free(i32, %struct.TYPE_13__*, i32) #2

declare dso_local i32 @ocs_memset(i64, i32, i64) #2

declare dso_local i32 @ocs_memcpy(i64, i8*, i64) #2

declare dso_local i32 @ocs_dma_free(i32, %struct.TYPE_14__*) #2

declare dso_local i64 @ocs_hw_exec_dmtf_clp_cmd(%struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @ocs_log_test(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
