; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_send_qm_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_send_qm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@QM_REG_SDMCMDADDR = common dso_local global i32 0, align 4
@QM_REG_SDMCMDDATALSB = common dso_local global i32 0, align 4
@QM_REG_SDMCMDDATAMSB = common dso_local global i32 0, align 4
@QM_REG_SDMCMDGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32)* @ecore_send_qm_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_send_qm_cmd(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %13 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %14 = call i32 @ecore_poll_on_qm_cmd_ready(%struct.ecore_hwfn* %12, %struct.ecore_ptt* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %44

17:                                               ; preds = %5
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %19 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %20 = load i32, i32* @QM_REG_SDMCMDADDR, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ecore_wr(%struct.ecore_hwfn* %18, %struct.ecore_ptt* %19, i32 %20, i32 %21)
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %24 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %25 = load i32, i32* @QM_REG_SDMCMDDATALSB, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @ecore_wr(%struct.ecore_hwfn* %23, %struct.ecore_ptt* %24, i32 %25, i32 %26)
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %29 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %30 = load i32, i32* @QM_REG_SDMCMDDATAMSB, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @ecore_wr(%struct.ecore_hwfn* %28, %struct.ecore_ptt* %29, i32 %30, i32 %31)
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %34 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %35 = load i32, i32* @QM_REG_SDMCMDGO, align 4
  %36 = call i32 @ecore_wr(%struct.ecore_hwfn* %33, %struct.ecore_ptt* %34, i32 %35, i32 1)
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %38 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %39 = load i32, i32* @QM_REG_SDMCMDGO, align 4
  %40 = call i32 @ecore_wr(%struct.ecore_hwfn* %37, %struct.ecore_ptt* %38, i32 %39, i32 0)
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %42 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %43 = call i32 @ecore_poll_on_qm_cmd_ready(%struct.ecore_hwfn* %41, %struct.ecore_ptt* %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %17, %16
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @ecore_poll_on_qm_cmd_ready(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
