; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c__ecore_cxt_release_cid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c__ecore_cxt_release_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_cid_acquired_map = type { i32, i64 }
%struct.ecore_hwfn = type { i32 }

@OSAL_NULL = common dso_local global %struct.ecore_cid_acquired_map* null, align 8
@ECORE_CXT_PF_CID = common dso_local global i32 0, align 4
@COMMON_MAX_NUM_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Trying to return incorrect CID belonging to VF %02x\0A\00", align 1
@ECORE_MSG_CXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Released CID 0x%08x [rel. %08x] vfid %02x type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ecore_cxt_release_cid(%struct.ecore_hwfn* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_cid_acquired_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** @OSAL_NULL, align 8
  store %struct.ecore_cid_acquired_map* %11, %struct.ecore_cid_acquired_map** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ECORE_CXT_PF_CID, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @COMMON_MAX_NUM_VFS, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %20, i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %49

23:                                               ; preds = %15, %3
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ecore_cxt_test_cid_acquired(%struct.ecore_hwfn* %24, i64 %25, i32 %26, i32* %8, %struct.ecore_cid_acquired_map** %7)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %49

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %7, align 8
  %34 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %7, align 8
  %39 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @OSAL_CLEAR_BIT(i64 %37, i32 %40)
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %43 = load i32, i32* @ECORE_MSG_CXT, align 4
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %42, i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %31, %30, %19
  ret void
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @ecore_cxt_test_cid_acquired(%struct.ecore_hwfn*, i64, i32, i32*, %struct.ecore_cid_acquired_map**) #1

declare dso_local i32 @OSAL_CLEAR_BIT(i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
