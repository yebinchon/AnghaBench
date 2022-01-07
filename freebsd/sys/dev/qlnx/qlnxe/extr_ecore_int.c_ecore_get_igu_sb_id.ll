; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_get_igu_sb_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_get_igu_sb_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ECORE_SP_SB_ID = common dso_local global i64 0, align 8
@ECORE_SB_INVALID_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Slowpath SB vector %04x doesn't exist\0A\00", align 1
@ECORE_MSG_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Slowpath SB index in IGU is 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SB [%04x] <--> IGU SB [%04x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ecore_get_igu_sb_id(%struct.ecore_hwfn* %0, i64 %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @ECORE_SP_SB_ID, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @IS_PF(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i64 @ecore_get_pf_igu_sb_id(%struct.ecore_hwfn* %23, i64 %25)
  store i64 %26, i64* %5, align 8
  br label %31

27:                                               ; preds = %16
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @ecore_vf_get_igu_sb_id(%struct.ecore_hwfn* %28, i64 %29)
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %27, %22
  br label %32

32:                                               ; preds = %31, %9
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @ECORE_SB_INVALID_IDX, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %37, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %38)
  br label %56

40:                                               ; preds = %32
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @ECORE_SP_SB_ID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %46 = load i32, i32* @ECORE_MSG_INTR, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i32 (%struct.ecore_hwfn*, i32, i8*, i64, ...) @DP_VERBOSE(%struct.ecore_hwfn* %45, i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  br label %55

49:                                               ; preds = %40
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %51 = load i32, i32* @ECORE_MSG_INTR, align 4
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 (%struct.ecore_hwfn*, i32, i8*, i64, ...) @DP_VERBOSE(%struct.ecore_hwfn* %50, i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %52, i64 %53)
  br label %55

55:                                               ; preds = %49, %44
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i64 @IS_PF(i32) #1

declare dso_local i64 @ecore_get_pf_igu_sb_id(%struct.ecore_hwfn*, i64) #1

declare dso_local i64 @ecore_vf_get_igu_sb_id(%struct.ecore_hwfn*, i64) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
