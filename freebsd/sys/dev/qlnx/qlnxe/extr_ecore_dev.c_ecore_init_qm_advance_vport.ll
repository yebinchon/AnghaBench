; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_advance_vport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_advance_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_qm_info }
%struct.ecore_qm_info = type { i64 }

@.str = private unnamed_addr constant [69 x i8] c"vport overflow! qm_info->num_vports %d, qm_init_get_num_vports() %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_init_qm_advance_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_init_qm_advance_vport(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_qm_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %4 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %4, i32 0, i32 0
  store %struct.ecore_qm_info* %5, %struct.ecore_qm_info** %3, align 8
  %6 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %11 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %14 = call i64 @ecore_init_qm_get_num_vports(%struct.ecore_hwfn* %13)
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %18 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %19 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %22 = call i64 @ecore_init_qm_get_num_vports(%struct.ecore_hwfn* %21)
  %23 = call i32 @DP_ERR(%struct.ecore_hwfn* %17, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %22)
  br label %24

24:                                               ; preds = %16, %1
  ret void
}

declare dso_local i64 @ecore_init_qm_get_num_vports(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
