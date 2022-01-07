; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_nvm_put_file_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_nvm_put_file_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_BUSY = common dso_local global i32 0, align 4
@DRV_MSG_CODE_NVM_PUT_FILE_BEGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_nvm_put_file_begin(%struct.ecore_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %12 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %11)
  store %struct.ecore_hwfn* %12, %struct.ecore_hwfn** %6, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %14 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %13)
  store %struct.ecore_ptt* %14, %struct.ecore_ptt** %7, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %16 = icmp ne %struct.ecore_ptt* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ECORE_BUSY, align 4
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %21 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %22 = load i32, i32* @DRV_MSG_CODE_NVM_PUT_FILE_BEGIN, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %20, %struct.ecore_ptt* %21, i32 %22, i32 %23, i32* %8, i32* %9)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %27 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %29 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %30 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %28, %struct.ecore_ptt* %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %19, %17
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
