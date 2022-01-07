; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_get_idx_from_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_get_idx_from_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_qm_info }
%struct.ecore_qm_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"BAD pq flags %d\0A\00", align 1
@OSAL_NULL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ecore_hwfn*, i32)* @ecore_init_qm_get_idx_from_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ecore_init_qm_get_idx_from_flags(%struct.ecore_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_qm_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 0
  store %struct.ecore_qm_info* %8, %struct.ecore_qm_info** %6, align 8
  %9 = bitcast i32* %5 to i64*
  %10 = call i32 @OSAL_BITMAP_WEIGHT(i64* %9, i32 4)
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %40

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %39 [
    i32 129, label %15
    i32 132, label %18
    i32 134, label %21
    i32 130, label %24
    i32 135, label %27
    i32 131, label %30
    i32 133, label %33
    i32 128, label %36
  ]

15:                                               ; preds = %13
  %16 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %17 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %16, i32 0, i32 7
  store i32* %17, i32** %3, align 8
  br label %45

18:                                               ; preds = %13
  %19 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %19, i32 0, i32 6
  store i32* %20, i32** %3, align 8
  br label %45

21:                                               ; preds = %13
  %22 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %23 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %22, i32 0, i32 5
  store i32* %23, i32** %3, align 8
  br label %45

24:                                               ; preds = %13
  %25 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %26 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %25, i32 0, i32 4
  store i32* %26, i32** %3, align 8
  br label %45

27:                                               ; preds = %13
  %28 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %28, i32 0, i32 3
  store i32* %29, i32** %3, align 8
  br label %45

30:                                               ; preds = %13
  %31 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %31, i32 0, i32 2
  store i32* %32, i32** %3, align 8
  br label %45

33:                                               ; preds = %13
  %34 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %35 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %34, i32 0, i32 1
  store i32* %35, i32** %3, align 8
  br label %45

36:                                               ; preds = %13
  %37 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %38 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %37, i32 0, i32 0
  store i32* %38, i32** %3, align 8
  br label %45

39:                                               ; preds = %13
  br label %40

40:                                               ; preds = %39, %12
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @DP_ERR(%struct.ecore_hwfn* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** @OSAL_NULL, align 8
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %40, %36, %33, %30, %27, %24, %21, %18, %15
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i32 @OSAL_BITMAP_WEIGHT(i64*, i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
