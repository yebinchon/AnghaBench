; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_reset_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_reset_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64 }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"eng\00", align 1
@OSAL_NULL = common dso_local global i32 0, align 4
@MAX_DBG_RESET_REGS = common dso_local global i64 0, align 8
@s_reset_regs_defs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*, i32)* @ecore_grc_dump_reset_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ecore_grc_dump_reset_regs(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dbg_tools_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  store %struct.dbg_tools_data* %14, %struct.dbg_tools_data** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i32, i32* @OSAL_NULL, align 4
  %17 = load i32, i32* @OSAL_NULL, align 4
  %18 = call i64 @ecore_grc_dump_regs_hdr(i64* %15, i32 0, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 -1, i32 %16, i32 %17)
  %19 = load i64, i64* %11, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %56, %4
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @MAX_DBG_RESET_REGS, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_reset_regs_defs, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %32 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %25
  br label %56

38:                                               ; preds = %25
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %40 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_reset_regs_defs, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @BYTES_TO_DWORDS(i32 %49)
  %51 = call i64 @ecore_grc_dump_reg_entry(%struct.ecore_hwfn* %39, %struct.ecore_ptt* %40, i64* %43, i32 %44, i32 %50, i32 1, i32 0)
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %38, %37
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %10, align 8
  br label %21

59:                                               ; preds = %21
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i64*, i64** %7, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i32, i32* @OSAL_NULL, align 4
  %66 = load i32, i32* @OSAL_NULL, align 4
  %67 = call i64 @ecore_grc_dump_regs_hdr(i64* %63, i32 1, i64 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 -1, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i64, i64* %11, align 8
  ret i64 %69
}

declare dso_local i64 @ecore_grc_dump_regs_hdr(i64*, i32, i64, i8*, i32, i32, i32) #1

declare dso_local i64 @ecore_grc_dump_reg_entry(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @BYTES_TO_DWORDS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
