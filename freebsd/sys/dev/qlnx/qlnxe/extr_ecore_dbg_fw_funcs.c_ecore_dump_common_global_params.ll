; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dump_common_global_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dump_common_global_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_hwfn = type { i32, %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64, i64 }
%struct.ecore_ptt = type { i32 }

@NUM_COMMON_GLOBAL_PARAMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"global_params\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"tools-version\00", align 1
@TOOLS_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"chip\00", align 1
@s_chip_defs = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@s_platform_defs = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"pci-func\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i64)* @ecore_dump_common_global_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dump_common_global_params(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.dbg_tools_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 1
  store %struct.dbg_tools_data* %15, %struct.dbg_tools_data** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i64, i64* @NUM_COMMON_GLOBAL_PARAMS, align 8
  %17 = load i64, i64* %10, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %13, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %9, align 4
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @ecore_dump_section_hdr(i32* %22, i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %12, align 4
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %29 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ecore_dump_fw_ver_param(%struct.ecore_hwfn* %28, %struct.ecore_ptt* %29, i32* %33, i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %39 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @ecore_dump_mfw_ver_param(%struct.ecore_hwfn* %38, %struct.ecore_ptt* %39, i32* %43, i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %12, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @TOOLS_VERSION, align 4
  %54 = call i32 @ecore_dump_num_param(i32* %51, i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_chip_defs, align 8
  %63 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %11, align 8
  %64 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ecore_dump_str_param(i32* %60, i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %12, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_platform_defs, align 8
  %78 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %11, align 8
  %79 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ecore_dump_str_param(i32* %75, i32 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %93 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ecore_dump_num_param(i32* %90, i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  ret i32 %98
}

declare dso_local i32 @ecore_dump_section_hdr(i32*, i32, i8*, i64) #1

declare dso_local i32 @ecore_dump_fw_ver_param(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

declare dso_local i32 @ecore_dump_mfw_ver_param(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

declare dso_local i32 @ecore_dump_num_param(i32*, i32, i8*, i32) #1

declare dso_local i32 @ecore_dump_str_param(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
