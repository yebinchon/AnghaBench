; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_nvm_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_nvm_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_BUSY = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_nvm_resp(%struct.ecore_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  store %struct.ecore_dev* %0, %struct.ecore_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %9 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %8)
  store %struct.ecore_hwfn* %9, %struct.ecore_hwfn** %6, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %11 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %10)
  store %struct.ecore_ptt* %11, %struct.ecore_ptt** %7, align 8
  %12 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %13 = icmp ne %struct.ecore_ptt* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ECORE_BUSY, align 4
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %19 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %18, i32 0, i32 0
  %20 = call i32 @OSAL_MEMCPY(i32* %17, i32* %19, i32 4)
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %22 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %23 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %21, %struct.ecore_ptt* %22)
  %24 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_MEMCPY(i32*, i32*, i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
