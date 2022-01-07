; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_protection_override_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_protection_override_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@DBG_STATUS_DUMP_BUF_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_protection_override_dump(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64*, i64** %11, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %16 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %17 = call i32 @ecore_dbg_protection_override_get_dump_buf_size(%struct.ecore_hwfn* %15, %struct.ecore_ptt* %16, i64* %12)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @DBG_STATUS_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %6, align 4
  br label %41

23:                                               ; preds = %5
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @DBG_STATUS_DUMP_BUF_TOO_SMALL, align 4
  store i32 %28, i32* %6, align 4
  br label %41

29:                                               ; preds = %23
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %31 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %32 = call i32 @ecore_update_blocks_reset_state(%struct.ecore_hwfn* %30, %struct.ecore_ptt* %31)
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %34 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = load i64*, i64** %11, align 8
  %37 = call i32 @ecore_protection_override_dump(%struct.ecore_hwfn* %33, %struct.ecore_ptt* %34, i64* %35, i32 1, i64* %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %39 = call i32 @ecore_dbg_grc_set_params_default(%struct.ecore_hwfn* %38)
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %29, %27, %21
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @ecore_dbg_protection_override_get_dump_buf_size(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*) #1

declare dso_local i32 @ecore_update_blocks_reset_state(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_protection_override_dump(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*, i32, i64*) #1

declare dso_local i32 @ecore_dbg_grc_set_params_default(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
