; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_single_vf_flr_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_single_vf_flr_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@VF_MAX_STATIC = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iov_single_vf_flr_cleanup(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @VF_MAX_STATIC, align 4
  %11 = sdiv i32 %10, 32
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @VF_MAX_STATIC, align 4
  %17 = sdiv i32 %16, 32
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @OSAL_MEMSET(i32* %14, i32 0, i32 %20)
  %22 = call i32 @OSAL_MSLEEP(i32 100)
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %24 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ecore_iov_execute_vf_flr_cleanup(%struct.ecore_hwfn* %23, %struct.ecore_ptt* %24, i32 %25, i32* %14)
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %28 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %29 = call i32 @ecore_mcp_ack_vf_flr(%struct.ecore_hwfn* %27, %struct.ecore_ptt* %28, i32* %14)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %31)
  ret i32 %30
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OSAL_MEMSET(i32*, i32, i32) #2

declare dso_local i32 @OSAL_MSLEEP(i32) #2

declare dso_local i32 @ecore_iov_execute_vf_flr_cleanup(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32*) #2

declare dso_local i32 @ecore_mcp_ack_vf_flr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
