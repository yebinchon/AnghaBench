; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_resc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_resc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.ecore_iwarp_info }
%struct.ecore_iwarp_info = type { i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_iwarp_resc_free(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_iwarp_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %4 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store %struct.ecore_iwarp_info* %7, %struct.ecore_iwarp_info** %3, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %9 = call i32 @ecore_ooo_free(%struct.ecore_hwfn* %8)
  %10 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %11 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %19 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @OSAL_FREE(i32 %17, i64 %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %24 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %32 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @OSAL_FREE(i32 %30, i64 %33)
  br label %35

35:                                               ; preds = %27, %22
  %36 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %37 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %42 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %45 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @OSAL_FREE(i32 %43, i64 %46)
  br label %48

48:                                               ; preds = %40, %35
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %51 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @ecore_rdma_bmap_free(%struct.ecore_hwfn* %49, i32* %53, i32 1)
  ret void
}

declare dso_local i32 @ecore_ooo_free(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_FREE(i32, i64) #1

declare dso_local i32 @ecore_rdma_bmap_free(%struct.ecore_hwfn*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
