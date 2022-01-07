; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@MAX_DBG_STORMS = common dso_local global i64 0, align 8
@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"CONN_AG_CTX\00", align 1
@DBG_GRC_PARAM_NUM_LCIDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"CONN_ST_CTX\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"TASK_AG_CTX\00", align 1
@DBG_GRC_PARAM_NUM_LTIDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"TASK_ST_CTX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32)* @ecore_grc_dump_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_grc_dump_ctx(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.storm_defs*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %107, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* @MAX_DBG_STORMS, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %110

16:                                               ; preds = %12
  %17 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %17, i64 %18
  store %struct.storm_defs* %19, %struct.storm_defs** %11, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %21 = load i64, i64* %10, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @ecore_grc_is_storm_included(%struct.ecore_hwfn* %20, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %107

26:                                               ; preds = %16
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %28 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %35 = load i32, i32* @DBG_GRC_PARAM_NUM_LCIDS, align 4
  %36 = call i32 @ecore_grc_get_param(%struct.ecore_hwfn* %34, i32 %35)
  %37 = load %struct.storm_defs*, %struct.storm_defs** %11, align 8
  %38 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.storm_defs*, %struct.storm_defs** %11, align 8
  %41 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @ecore_grc_dump_ctx_data(%struct.ecore_hwfn* %27, %struct.ecore_ptt* %28, i32* %32, i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i64 %43)
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %48 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %55 = load i32, i32* @DBG_GRC_PARAM_NUM_LCIDS, align 4
  %56 = call i32 @ecore_grc_get_param(%struct.ecore_hwfn* %54, i32 %55)
  %57 = load %struct.storm_defs*, %struct.storm_defs** %11, align 8
  %58 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.storm_defs*, %struct.storm_defs** %11, align 8
  %61 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @ecore_grc_dump_ctx_data(%struct.ecore_hwfn* %47, %struct.ecore_ptt* %48, i32* %52, i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59, i32 %62, i64 %63)
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %68 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %75 = load i32, i32* @DBG_GRC_PARAM_NUM_LTIDS, align 4
  %76 = call i32 @ecore_grc_get_param(%struct.ecore_hwfn* %74, i32 %75)
  %77 = load %struct.storm_defs*, %struct.storm_defs** %11, align 8
  %78 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.storm_defs*, %struct.storm_defs** %11, align 8
  %81 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @ecore_grc_dump_ctx_data(%struct.ecore_hwfn* %67, %struct.ecore_ptt* %68, i32* %72, i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %79, i32 %82, i64 %83)
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %88 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %95 = load i32, i32* @DBG_GRC_PARAM_NUM_LTIDS, align 4
  %96 = call i32 @ecore_grc_get_param(%struct.ecore_hwfn* %94, i32 %95)
  %97 = load %struct.storm_defs*, %struct.storm_defs** %11, align 8
  %98 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.storm_defs*, %struct.storm_defs** %11, align 8
  %101 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @ecore_grc_dump_ctx_data(%struct.ecore_hwfn* %87, %struct.ecore_ptt* %88, i32* %92, i32 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %99, i32 %102, i64 %103)
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %26, %25
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %10, align 8
  br label %12

110:                                              ; preds = %12
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

declare dso_local i32 @ecore_grc_is_storm_included(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_grc_dump_ctx_data(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @ecore_grc_get_param(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
