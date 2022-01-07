; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_linkcfg_lancer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_linkcfg_lancer.c"
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
@.str.1 = private unnamed_addr constant [25 x i8] c"show / OEMELX_LinkConfig\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@OCS_HW_DMTF_CLP_RSP_MAX = common dso_local global i64 0, align 8
@ocs_hw_linkcfg_dmtf_clp_cb = common dso_local global i32 0, align 4
@OCS_CMD_POLL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"CLP cmd=\22%s\22 failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i32, i32, i8*)* @ocs_hw_get_linkcfg_lancer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_hw_get_linkcfg_lancer(%struct.TYPE_12__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @OCS_HW_DMTF_CLP_CMD_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %19, i64* %13, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @OCS_M_NOWAIT, align 4
  %24 = call %struct.TYPE_13__* @ocs_malloc(i32 %22, i32 40, i32 %23)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %12, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %26 = icmp eq %struct.TYPE_13__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ocs_log_err(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %32, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %154

33:                                               ; preds = %4
  %34 = load i32, i32* @OCS_HW_DMTF_CLP_CMD_MAX, align 4
  %35 = call i32 @ocs_snprintf(i8* %18, i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = call i64 @ocs_strlen(i8* %18)
  %42 = add nsw i64 %41, 1
  %43 = call i64 @ocs_dma_alloc(i32 %38, %struct.TYPE_14__* %40, i64 %42, i32 4096)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %33
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ocs_log_err(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %54 = call i32 @ocs_free(i32 %52, %struct.TYPE_13__* %53, i32 40)
  %55 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %55, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %154

56:                                               ; preds = %33
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @ocs_strlen(i8* %18)
  %62 = add nsw i64 %61, 1
  %63 = call i32 @ocs_memset(i64 %60, i32 0, i64 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @ocs_strlen(i8* %18)
  %69 = call i32 @ocs_memcpy(i64 %67, i8* %18, i64 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64, i64* @OCS_HW_DMTF_CLP_RSP_MAX, align 8
  %76 = call i64 @ocs_dma_alloc(i32 %72, %struct.TYPE_14__* %74, i64 %75, i32 4096)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %56
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ocs_log_err(i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = call i32 @ocs_dma_free(i32 %85, %struct.TYPE_14__* %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %93 = call i32 @ocs_free(i32 %91, %struct.TYPE_13__* %92, i32 40)
  %94 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %94, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %154

95:                                               ; preds = %56
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @ocs_hw_linkcfg_dmtf_clp_cb, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %113 = call i64 @ocs_hw_exec_dmtf_clp_cmd(%struct.TYPE_12__* %105, %struct.TYPE_14__* %107, %struct.TYPE_14__* %109, i32 %110, i32 %111, %struct.TYPE_13__* %112)
  store i64 %113, i64* %13, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @OCS_CMD_POLL, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %95
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %152

121:                                              ; preds = %117, %95
  %122 = load i64, i64* %13, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 @ocs_log_test(i32 %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %124, %121
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = call i32 @ocs_dma_free(i32 %137, %struct.TYPE_14__* %139)
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = call i32 @ocs_dma_free(i32 %143, %struct.TYPE_14__* %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %151 = call i32 @ocs_free(i32 %149, %struct.TYPE_13__* %150, i32 40)
  br label %152

152:                                              ; preds = %134, %117
  %153 = load i64, i64* %13, align 8
  store i64 %153, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %154

154:                                              ; preds = %152, %78, %45, %27
  %155 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i64, i64* %5, align 8
  ret i64 %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_13__* @ocs_malloc(i32, i32, i32) #2

declare dso_local i32 @ocs_log_err(i32, i8*) #2

declare dso_local i32 @ocs_snprintf(i8*, i32, i8*) #2

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
