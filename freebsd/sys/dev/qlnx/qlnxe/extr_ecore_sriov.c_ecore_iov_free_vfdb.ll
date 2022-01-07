; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_free_vfdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_free_vfdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.ecore_pf_iov* }
%struct.ecore_pf_iov = type { i32, i32, i64, i32, i32, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_iov_free_vfdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_free_vfdb(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_pf_iov*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %4 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %4, i32 0, i32 1
  %6 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %5, align 8
  store %struct.ecore_pf_iov* %6, %struct.ecore_pf_iov** %3, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 1
  %9 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %8, align 8
  %10 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %3, align 8
  %18 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %3, align 8
  %21 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %3, align 8
  %24 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %16, i64 %19, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %13, %1
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 1
  %30 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %29, align 8
  %31 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %36 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %3, align 8
  %39 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %3, align 8
  %42 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %3, align 8
  %45 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %37, i64 %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %34, %27
  %49 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %3, align 8
  %50 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %55 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %3, align 8
  %58 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %3, align 8
  %61 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %3, align 8
  %64 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %56, i64 %59, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
