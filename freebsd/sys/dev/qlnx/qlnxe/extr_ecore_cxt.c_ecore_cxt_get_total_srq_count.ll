; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_get_total_srq_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_get_total_srq_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_cxt_mngr* }
%struct.ecore_cxt_mngr = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_cxt_get_total_srq_count(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_cxt_mngr*, align 8
  %4 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %6 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %5, i32 0, i32 0
  %7 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %6, align 8
  store %struct.ecore_cxt_mngr* %7, %struct.ecore_cxt_mngr** %3, align 8
  %8 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %9 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %12 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %17 = call i64 @ecore_cxt_srqs_per_page(%struct.ecore_hwfn* %16)
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %15, %1
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i64 @ecore_cxt_srqs_per_page(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
