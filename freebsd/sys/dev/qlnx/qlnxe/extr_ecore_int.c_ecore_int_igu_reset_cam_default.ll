; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_reset_cam_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_reset_cam_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ecore_sb_cnt_info }
%struct.ecore_sb_cnt_info = type { i64, i64, i64, i64, i64, i64 }
%struct.ecore_ptt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_int_igu_reset_cam_default(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca %struct.ecore_sb_cnt_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.ecore_sb_cnt_info* %10, %struct.ecore_sb_cnt_info** %5, align 8
  %11 = load %struct.ecore_sb_cnt_info*, %struct.ecore_sb_cnt_info** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_sb_cnt_info, %struct.ecore_sb_cnt_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ecore_sb_cnt_info*, %struct.ecore_sb_cnt_info** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_sb_cnt_info, %struct.ecore_sb_cnt_info* %14, i32 0, i32 5
  store i64 %13, i64* %15, align 8
  %16 = load %struct.ecore_sb_cnt_info*, %struct.ecore_sb_cnt_info** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_sb_cnt_info, %struct.ecore_sb_cnt_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ecore_sb_cnt_info*, %struct.ecore_sb_cnt_info** %5, align 8
  %20 = getelementptr inbounds %struct.ecore_sb_cnt_info, %struct.ecore_sb_cnt_info* %19, i32 0, i32 4
  store i64 %18, i64* %20, align 8
  %21 = load %struct.ecore_sb_cnt_info*, %struct.ecore_sb_cnt_info** %5, align 8
  %22 = getelementptr inbounds %struct.ecore_sb_cnt_info, %struct.ecore_sb_cnt_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ecore_sb_cnt_info*, %struct.ecore_sb_cnt_info** %5, align 8
  %25 = getelementptr inbounds %struct.ecore_sb_cnt_info, %struct.ecore_sb_cnt_info* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load %struct.ecore_sb_cnt_info*, %struct.ecore_sb_cnt_info** %5, align 8
  %27 = getelementptr inbounds %struct.ecore_sb_cnt_info, %struct.ecore_sb_cnt_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ecore_sb_cnt_info*, %struct.ecore_sb_cnt_info** %5, align 8
  %30 = getelementptr inbounds %struct.ecore_sb_cnt_info, %struct.ecore_sb_cnt_info* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.ecore_sb_cnt_info*, %struct.ecore_sb_cnt_info** %5, align 8
  %32 = getelementptr inbounds %struct.ecore_sb_cnt_info, %struct.ecore_sb_cnt_info* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.ecore_sb_cnt_info*, %struct.ecore_sb_cnt_info** %5, align 8
  %34 = getelementptr inbounds %struct.ecore_sb_cnt_info, %struct.ecore_sb_cnt_info* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %36 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %37 = call i32 @ecore_int_igu_reset_cam(%struct.ecore_hwfn* %35, %struct.ecore_ptt* %36)
  ret i32 %37
}

declare dso_local i32 @ecore_int_igu_reset_cam(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
