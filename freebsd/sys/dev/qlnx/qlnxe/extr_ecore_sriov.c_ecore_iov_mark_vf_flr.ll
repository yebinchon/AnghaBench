; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_mark_vf_flr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_mark_vf_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_vf_info = type { i32, i32, i32 }

@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Marking FLR-ed VFs\0A\00", align 1
@VF_MAX_STATIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"[%08x,...,%08x]: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"VF flr but no IOV\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"VF[%d] [rel %d] got FLR-ed\0A\00", align 1
@VF_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iov_mark_vf_flr(%struct.ecore_hwfn* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_vf_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %13 = load i32, i32* @ECORE_MSG_IOV, align 4
  %14 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %12, i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %35, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @VF_MAX_STATIC, align 4
  %18 = sdiv i32 %17, 32
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %22 = load i32, i32* @ECORE_MSG_IOV, align 4
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %23, 32
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = mul nsw i32 %26, 32
  %28 = sub nsw i32 %27, 1
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %21, i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %40 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %47 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %46, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %115

48:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %110, %48
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %50, %57
  br i1 %58, label %59, label %113

59:                                               ; preds = %49
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %60, i32 %61, i32 0)
  store %struct.ecore_vf_info* %62, %struct.ecore_vf_info** %8, align 8
  %63 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %64 = icmp ne %struct.ecore_vf_info* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %110

66:                                               ; preds = %59
  %67 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %68 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = srem i32 %70, 32
  %72 = shl i32 1, %71
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sdiv i32 %74, 32
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %72, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %66
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %83 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  store i64* %86, i64** %10, align 8
  %87 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %88 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %11, align 4
  %90 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %91 = load i32, i32* @ECORE_MSG_IOV, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %90, i32 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* @VF_RESET, align 4
  %96 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %97 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %11, align 4
  %99 = srem i32 %98, 64
  %100 = zext i32 %99 to i64
  %101 = shl i64 1, %100
  %102 = load i64*, i64** %10, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sdiv i32 %103, 64
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = or i64 %107, %101
  store i64 %108, i64* %106, align 8
  store i32 1, i32* %6, align 4
  br label %109

109:                                              ; preds = %81, %66
  br label %110

110:                                              ; preds = %109, %65
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %49

113:                                              ; preds = %49
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %45
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
