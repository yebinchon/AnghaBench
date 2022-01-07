; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_cmd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.ecore_mcp_info* }
%struct.ecore_mcp_info = type { i8*, i8*, i32, i32, i32, i32 }
%struct.ecore_ptt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate mcp_info\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"MCP is not initialized\0A\00", align 1
@OSAL_NULL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to allocate mcp memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_cmd_init(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_mcp_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @OSAL_ZALLOC(i32 %10, i32 %11, i32 32)
  %13 = bitcast i8* %12 to %struct.ecore_mcp_info*
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 1
  store %struct.ecore_mcp_info* %13, %struct.ecore_mcp_info** %15, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 1
  %18 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %17, align 8
  %19 = icmp ne %struct.ecore_mcp_info* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %22 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %21, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %23, i32* %3, align 4
  br label %92

24:                                               ; preds = %2
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 1
  %27 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %26, align 8
  store %struct.ecore_mcp_info* %27, %struct.ecore_mcp_info** %6, align 8
  %28 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %28, i32 0, i32 5
  %30 = call i32 @OSAL_SPIN_LOCK_INIT(i32* %29)
  %31 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %31, i32 0, i32 4
  %33 = call i32 @OSAL_SPIN_LOCK_INIT(i32* %32)
  %34 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %6, align 8
  %35 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %34, i32 0, i32 3
  %36 = call i32 @OSAL_LIST_INIT(i32* %35)
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %38 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %39 = call i64 @ecore_load_mcp_offsets(%struct.ecore_hwfn* %37, %struct.ecore_ptt* %38)
  %40 = load i64, i64* @ECORE_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %24
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %44 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %43, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i64, i64* @ECORE_SUCCESS, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %92

47:                                               ; preds = %24
  %48 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %6, align 8
  %49 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @MFW_DRV_MSG_MAX_DWORDS(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %56 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i8* @OSAL_ZALLOC(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %6, align 8
  %62 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %64 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i8* @OSAL_ZALLOC(i32 %65, i32 %66, i32 %67)
  %69 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %6, align 8
  %70 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %6, align 8
  %72 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** @OSAL_NULL, align 8
  %75 = icmp eq i8* %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %47
  %77 = load %struct.ecore_mcp_info*, %struct.ecore_mcp_info** %6, align 8
  %78 = getelementptr inbounds %struct.ecore_mcp_info, %struct.ecore_mcp_info* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** @OSAL_NULL, align 8
  %81 = icmp eq i8* %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %47
  br label %86

83:                                               ; preds = %76
  %84 = load i64, i64* @ECORE_SUCCESS, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %92

86:                                               ; preds = %82
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %88 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %87, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %90 = call i32 @ecore_mcp_free(%struct.ecore_hwfn* %89)
  %91 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %86, %83, %42, %20
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i8* @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @OSAL_SPIN_LOCK_INIT(i32*) #1

declare dso_local i32 @OSAL_LIST_INIT(i32*) #1

declare dso_local i64 @ecore_load_mcp_offsets(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @MFW_DRV_MSG_MAX_DWORDS(i32) #1

declare dso_local i32 @ecore_mcp_free(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
