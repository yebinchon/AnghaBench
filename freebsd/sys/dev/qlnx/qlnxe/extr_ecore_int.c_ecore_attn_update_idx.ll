; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_attn_update_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_attn_update_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_sb_attn_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ECORE_SB_ATT_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ecore_hwfn*, %struct.ecore_sb_attn_info*)* @ecore_attn_update_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ecore_attn_update_idx(%struct.ecore_hwfn* %0, %struct.ecore_sb_attn_info* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_sb_attn_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_sb_attn_info* %1, %struct.ecore_sb_attn_info** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @OSAL_MMIOWB(i32 %9)
  %11 = load %struct.ecore_sb_attn_info*, %struct.ecore_sb_attn_info** %4, align 8
  %12 = getelementptr inbounds %struct.ecore_sb_attn_info, %struct.ecore_sb_attn_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @OSAL_LE16_TO_CPU(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.ecore_sb_attn_info*, %struct.ecore_sb_attn_info** %4, align 8
  %18 = getelementptr inbounds %struct.ecore_sb_attn_info, %struct.ecore_sb_attn_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.ecore_sb_attn_info*, %struct.ecore_sb_attn_info** %4, align 8
  %25 = getelementptr inbounds %struct.ecore_sb_attn_info, %struct.ecore_sb_attn_info* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* @ECORE_SB_ATT_IDX, align 8
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @OSAL_MMIOWB(i32 %30)
  %32 = load i64, i64* %5, align 8
  ret i64 %32
}

declare dso_local i32 @OSAL_MMIOWB(i32) #1

declare dso_local i64 @OSAL_LE16_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
