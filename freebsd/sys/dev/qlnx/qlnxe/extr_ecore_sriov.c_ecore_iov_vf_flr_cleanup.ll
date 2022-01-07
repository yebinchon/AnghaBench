; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_flr_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_flr_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ecore_ptt = type { i32 }

@VF_MAX_STATIC = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iov_vf_flr_cleanup(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %9 = load i32, i32* @VF_MAX_STATIC, align 4
  %10 = sdiv i32 %9, 32
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @VF_MAX_STATIC, align 4
  %16 = sdiv i32 %15, 32
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @OSAL_MEMSET(i32* %13, i32 0, i32 %19)
  %21 = call i32 @OSAL_MSLEEP(i32 100)
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %37, %2
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %23, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %34 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @ecore_iov_execute_vf_flr_cleanup(%struct.ecore_hwfn* %33, %struct.ecore_ptt* %34, i64 %35, i32* %13)
  br label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %22

40:                                               ; preds = %22
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %42 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %43 = call i32 @ecore_mcp_ack_vf_flr(%struct.ecore_hwfn* %41, %struct.ecore_ptt* %42, i32* %13)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  ret i32 %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OSAL_MEMSET(i32*, i32, i32) #2

declare dso_local i32 @OSAL_MSLEEP(i32) #2

declare dso_local i32 @ecore_iov_execute_vf_flr_cleanup(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32*) #2

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
