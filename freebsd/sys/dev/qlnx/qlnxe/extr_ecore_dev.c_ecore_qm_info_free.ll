; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_qm_info_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_qm_info_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.ecore_qm_info }
%struct.ecore_qm_info = type { i8*, i8*, i8*, i8* }

@OSAL_NULL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_qm_info_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_qm_info_free(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_qm_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %4 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %4, i32 0, i32 1
  store %struct.ecore_qm_info* %5, %struct.ecore_qm_info** %3, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %10 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %9, i32 0, i32 3
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @OSAL_FREE(i32 %8, i8* %11)
  %13 = load i8*, i8** @OSAL_NULL, align 8
  %14 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %15 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %20 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @OSAL_FREE(i32 %18, i8* %21)
  %23 = load i8*, i8** @OSAL_NULL, align 8
  %24 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %25 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %27 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %30 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @OSAL_FREE(i32 %28, i8* %31)
  %33 = load i8*, i8** @OSAL_NULL, align 8
  %34 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %35 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %37 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %40 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @OSAL_FREE(i32 %38, i8* %41)
  %43 = load i8*, i8** @OSAL_NULL, align 8
  %44 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %45 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  ret void
}

declare dso_local i32 @OSAL_FREE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
