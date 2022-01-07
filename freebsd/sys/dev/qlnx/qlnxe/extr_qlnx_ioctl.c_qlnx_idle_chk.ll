; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_idle_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_idle_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32*, %struct.TYPE_5__, i64* }
%struct.TYPE_5__ = type { %struct.ecore_hwfn* }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ecore_ptt_acquire failed\0A\00", align 1
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ecore_dbg_idle_chk_dump failed [%d, 0x%x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnx_idle_chk(%struct.TYPE_6__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca %struct.ecore_ptt*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %6, align 8
  store i64 %27, i64* %28, align 8
  store i32 0, i32* %4, align 4
  br label %82

29:                                               ; preds = %3
  %30 = call i32 (...) @ecore_dbg_get_fw_func_ver()
  %31 = call i32 @ecore_dbg_set_app_ver(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %35, i64 %37
  store %struct.ecore_hwfn* %38, %struct.ecore_hwfn** %9, align 8
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %40 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %39)
  store %struct.ecore_ptt* %40, %struct.ecore_ptt** %10, align 8
  %41 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %42 = icmp ne %struct.ecore_ptt* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %29
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = call i32 (%struct.TYPE_6__*, i8*, ...) @QL_DPRINT1(%struct.TYPE_6__* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %82

47:                                               ; preds = %29
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %49 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 2
  %65 = load i64*, i64** %6, align 8
  %66 = call i32 @ecore_dbg_idle_chk_dump(%struct.ecore_hwfn* %48, %struct.ecore_ptt* %49, i32 %56, i32 %64, i64* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @DBG_STATUS_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 8
  br label %77

72:                                               ; preds = %47
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (%struct.TYPE_6__*, i8*, ...) @QL_DPRINT1(%struct.TYPE_6__* %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %69
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %79 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %80 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %78, %struct.ecore_ptt* %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %77, %43, %20
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @ecore_dbg_set_app_ver(i32) #1

declare dso_local i32 @ecore_dbg_get_fw_func_ver(...) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @ecore_dbg_idle_chk_dump(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i64*) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
