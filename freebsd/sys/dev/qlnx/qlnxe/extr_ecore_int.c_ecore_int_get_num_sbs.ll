; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_get_num_sbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_get_num_sbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ecore_igu_info* }
%struct.ecore_igu_info = type { i32 }
%struct.ecore_sb_cnt_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_int_get_num_sbs(%struct.ecore_hwfn* %0, %struct.ecore_sb_cnt_info* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_sb_cnt_info*, align 8
  %5 = alloca %struct.ecore_igu_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_sb_cnt_info* %1, %struct.ecore_sb_cnt_info** %4, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %8, align 8
  store %struct.ecore_igu_info* %9, %struct.ecore_igu_info** %5, align 8
  %10 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %5, align 8
  %11 = icmp ne %struct.ecore_igu_info* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.ecore_sb_cnt_info*, %struct.ecore_sb_cnt_info** %4, align 8
  %14 = icmp ne %struct.ecore_sb_cnt_info* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  br label %21

16:                                               ; preds = %12
  %17 = load %struct.ecore_sb_cnt_info*, %struct.ecore_sb_cnt_info** %4, align 8
  %18 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %5, align 8
  %19 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %18, i32 0, i32 0
  %20 = call i32 @OSAL_MEMCPY(%struct.ecore_sb_cnt_info* %17, i32* %19, i32 4)
  br label %21

21:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @OSAL_MEMCPY(%struct.ecore_sb_cnt_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
