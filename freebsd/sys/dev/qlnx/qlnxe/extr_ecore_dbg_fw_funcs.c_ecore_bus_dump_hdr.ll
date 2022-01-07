; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Unexpected debug error: invalid HW ID mask\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dump-type\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"debug-bus\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"wrap-mode\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"one-shot\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"wrap-around\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"hw-dwords\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"hw-id-mask\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@s_dbg_target_names = common dso_local global i8** null, align 8
@DBG_BUS_TARGET_ID_NIG = common dso_local global i64 0, align 8
@OSAL_NULL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"bus_data\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32)* @ecore_bus_dump_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_bus_dump_hdr(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dbg_tools_data*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  store %struct.dbg_tools_data* %14, %struct.dbg_tools_data** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %16 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %17 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @OSAL_SNPRINTF(i8* %15, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %24 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %23, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %4
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ecore_dump_common_global_params(%struct.ecore_hwfn* %26, %struct.ecore_ptt* %27, i32* %31, i32 %32, i32 5)
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ecore_dump_str_param(i32* %39, i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %50 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)
  %56 = call i32 @ecore_dump_str_param(i32* %47, i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %65 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ecore_dump_num_param(i32* %62, i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %8, align 4
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %77 = call i32 @ecore_dump_str_param(i32* %74, i32 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %8, align 4
  %85 = load i8**, i8*** @s_dbg_target_names, align 8
  %86 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %87 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8*, i8** %85, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @ecore_dump_str_param(i32* %83, i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %11, align 4
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @ecore_bus_dump_inputs(%struct.ecore_hwfn* %95, i32* %99, i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %105 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @DBG_BUS_TARGET_ID_NIG, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %136

110:                                              ; preds = %25
  store i32 0, i32* %12, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %115 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %116 = load i32, i32* @OSAL_NULL, align 4
  %117 = call i32 @ecore_bus_dump_data(%struct.ecore_hwfn* %114, %struct.ecore_ptt* %115, i32 %116, i32 0)
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %113, %110
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @ecore_dump_section_hdr(i32* %122, i32 %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %11, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @ecore_dump_num_param(i32* %130, i32 %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %118, %25
  %137 = load i32, i32* %11, align 4
  ret i32 %137
}

declare dso_local i64 @OSAL_SNPRINTF(i8*, i32, i8*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_dump_common_global_params(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32) #1

declare dso_local i32 @ecore_dump_str_param(i32*, i32, i8*, i8*) #1

declare dso_local i32 @ecore_dump_num_param(i32*, i32, i8*, i32) #1

declare dso_local i32 @ecore_bus_dump_inputs(%struct.ecore_hwfn*, i32*, i32) #1

declare dso_local i32 @ecore_bus_dump_data(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_dump_section_hdr(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
