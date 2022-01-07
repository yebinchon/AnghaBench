; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c__ecore_cxt_acquire_cid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c__ecore_cxt_acquire_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_cxt_mngr* }
%struct.ecore_cxt_mngr = type { %struct.ecore_cid_acquired_map**, %struct.ecore_cid_acquired_map* }
%struct.ecore_cid_acquired_map = type { i64, i64, i64 }

@MAX_CONN_TYPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid protocol type %d\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@COMMON_MAX_NUM_VFS = common dso_local global i64 0, align 8
@ECORE_CXT_PF_CID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"VF [%02x] is out of range\0A\00", align 1
@OSAL_NULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"no CID available for protocol %d\0A\00", align 1
@ECORE_NORESOURCES = common dso_local global i32 0, align 4
@ECORE_MSG_CXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Acquired cid 0x%08x [rel. %08x] vfid %02x type %d\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_ecore_cxt_acquire_cid(%struct.ecore_hwfn* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ecore_cxt_mngr*, align 8
  %11 = alloca %struct.ecore_cid_acquired_map*, align 8
  %12 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  %15 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %14, align 8
  store %struct.ecore_cxt_mngr* %15, %struct.ecore_cxt_mngr** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MAX_CONN_TYPES, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %20, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %109

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @COMMON_MAX_NUM_VFS, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @ECORE_CXT_PF_CID, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %33, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %37, i32* %5, align 4
  br label %109

38:                                               ; preds = %28, %24
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @ECORE_CXT_PF_CID, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %10, align 8
  %44 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %43, i32 0, i32 1
  %45 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %45, i64 %47
  store %struct.ecore_cid_acquired_map* %48, %struct.ecore_cid_acquired_map** %11, align 8
  br label %59

49:                                               ; preds = %38
  %50 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %10, align 8
  %51 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %50, i32 0, i32 0
  %52 = load %struct.ecore_cid_acquired_map**, %struct.ecore_cid_acquired_map*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %52, i64 %54
  %56 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %56, i64 %57
  store %struct.ecore_cid_acquired_map* %58, %struct.ecore_cid_acquired_map** %11, align 8
  br label %59

59:                                               ; preds = %49, %42
  %60 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %11, align 8
  %61 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @OSAL_NULL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %66, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %69, i32* %5, align 4
  br label %109

70:                                               ; preds = %59
  %71 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %11, align 8
  %72 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %11, align 8
  %75 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @OSAL_FIND_FIRST_ZERO_BIT(i64 %73, i64 %76)
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %11, align 8
  %80 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %70
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %84, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @ECORE_NORESOURCES, align 4
  store i32 %87, i32* %5, align 4
  br label %109

88:                                               ; preds = %70
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %11, align 8
  %91 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @OSAL_SET_BIT(i64 %89, i64 %92)
  %94 = load i64, i64* %12, align 8
  %95 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %11, align 8
  %96 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = load i64*, i64** %8, align 8
  store i64 %98, i64* %99, align 8
  %100 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %101 = load i32, i32* @ECORE_MSG_CXT, align 4
  %102 = load i64*, i64** %8, align 8
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %100, i32 %101, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %103, i64 %104, i64 %105, i32 %106)
  %108 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %88, %83, %65, %32, %19
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @OSAL_FIND_FIRST_ZERO_BIT(i64, i64) #1

declare dso_local i32 @OSAL_SET_BIT(i64, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
