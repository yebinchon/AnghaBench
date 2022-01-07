; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_port_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_port_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }

@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Chip is in an error state - reset needed\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@SLI_RSRC_FCOE_VPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"FCOE_VPI allocation failure\0A\00", align 1
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"command memory allocation failed\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@__ocs_hw_port_alloc_read_sparm64 = common dso_local global i32* null, align 8
@__ocs_hw_port_alloc_init_vpi = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"need WWN for physical port\0A\00", align 1
@__ocs_hw_port_alloc_init = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_port_alloc(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i32, i32* @UINT32_MAX, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = call i64 @sli_fw_error_status(i32* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ocs_log_crit(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %36, i64* %5, align 8
  br label %128

37:                                               ; preds = %4
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @ocs_memcpy(i32* %42, i32* %43, i32 4)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* @SLI_RSRC_FCOE_VPI, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i64 @sli_resource_alloc(i32* %47, i32 %48, i32* %50, i32* %12)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ocs_log_err(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %58, i64* %5, align 8
  br label %128

59:                                               ; preds = %45
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  store i32* null, i32** %13, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %67 = load i32, i32* @OCS_M_ZERO, align 4
  %68 = load i32, i32* @OCS_M_NOWAIT, align 4
  %69 = or i32 %67, %68
  %70 = call i32* @ocs_malloc(i32 %65, i32 %66, i32 %69)
  store i32* %70, i32** %10, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %62
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ocs_log_err(i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %78, i64* %11, align 8
  br label %108

79:                                               ; preds = %62
  %80 = load i32*, i32** %9, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i32*, i32** @__ocs_hw_port_alloc_read_sparm64, align 8
  store i32* %83, i32** %13, align 8
  br label %86

84:                                               ; preds = %79
  %85 = load i32*, i32** @__ocs_hw_port_alloc_init_vpi, align 8
  store i32* %85, i32** %13, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32*, i32** %13, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @ocs_sm_transition(%struct.TYPE_8__* %88, i32* %89, i32* %90)
  br label %107

92:                                               ; preds = %59
  %93 = load i32*, i32** %9, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ocs_log_test(i32 %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %100, i64* %11, align 8
  br label %106

101:                                              ; preds = %92
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32*, i32** @__ocs_hw_port_alloc_init, align 8
  %105 = call i32 @ocs_sm_transition(%struct.TYPE_8__* %103, i32* %104, i32* null)
  br label %106

106:                                              ; preds = %101, %95
  br label %107

107:                                              ; preds = %106, %86
  br label %108

108:                                              ; preds = %107, %73
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %118 = call i32 @ocs_free(i32 %115, i32* %116, i32 %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* @SLI_RSRC_FCOE_VPI, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @sli_resource_free(i32* %120, i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %112, %108
  %127 = load i64, i64* %11, align 8
  store i64 %127, i64* %5, align 8
  br label %128

128:                                              ; preds = %126, %53, %31
  %129 = load i64, i64* %5, align 8
  ret i64 %129
}

declare dso_local i64 @sli_fw_error_status(i32*) #1

declare dso_local i32 @ocs_log_crit(i32, i8*) #1

declare dso_local i32 @ocs_memcpy(i32*, i32*, i32) #1

declare dso_local i64 @sli_resource_alloc(i32*, i32, i32*, i32*) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_sm_transition(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, i32*, i32) #1

declare dso_local i32 @sli_resource_free(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
