; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_addr_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_addr_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64, i64, i64 }
%struct.ecore_ptt = type { i32 }

@s_platform_defs = common dso_local global %struct.TYPE_2__* null, align 8
@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Dumping %d registers...\0A\00", align 1
@PROTECT_WIDE_BUS = common dso_local global i64 0, align 8
@OSAL_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Failed reading from chip using DMAE, using GRC instead\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*, i32, i64, i64, i32)* @ecore_grc_dump_addr_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ecore_grc_dump_addr_range(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64* %2, i32 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca %struct.ecore_ptt*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dbg_tools_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %9, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  store %struct.dbg_tools_data* %18, %struct.dbg_tools_data** %16, align 8
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %7
  %22 = load i64, i64* %14, align 8
  store i64 %22, i64* %8, align 8
  br label %98

23:                                               ; preds = %7
  %24 = load i64, i64* %14, align 8
  %25 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %26 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %30 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_platform_defs, align 8
  %33 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %34 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %31, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %23
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %42 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %43 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %44 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %41, i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %48 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %40, %23
  %50 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %51 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %49
  %55 = load i64, i64* %14, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_platform_defs, align 8
  %57 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %58 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %55, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %54
  %65 = load i64, i64* @PROTECT_WIDE_BUS, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %64
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %67, %54
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %72 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @DWORDS_TO_BYTES(i64 %73)
  %75 = load i64*, i64** %11, align 8
  %76 = ptrtoint i64* %75 to i64
  %77 = trunc i64 %76 to i32
  %78 = load i64, i64* %14, align 8
  %79 = load i32, i32* @OSAL_NULL, align 4
  %80 = call i32 @ecore_dmae_grc2host(%struct.ecore_hwfn* %71, %struct.ecore_ptt* %72, i32 %74, i32 %77, i64 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %70
  %83 = load i64, i64* %14, align 8
  store i64 %83, i64* %8, align 8
  br label %98

84:                                               ; preds = %70
  %85 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %86 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %88 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %89 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %87, i32 %88, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %84, %67, %64, %49
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %92 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %93 = load i64*, i64** %11, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @ecore_read_regs(%struct.ecore_hwfn* %91, %struct.ecore_ptt* %92, i64* %93, i64 %94, i64 %95)
  %97 = load i64, i64* %14, align 8
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %90, %82, %21
  %99 = load i64, i64* %8, align 8
  ret i64 %99
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_dmae_grc2host(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i64, i32) #1

declare dso_local i32 @DWORDS_TO_BYTES(i64) #1

declare dso_local i32 @ecore_read_regs(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
