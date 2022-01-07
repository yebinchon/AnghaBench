; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_get_reserved_ptt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_get_reserved_ptt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ptt = type { i32 }
%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ecore_ptt* }

@RESERVED_PTT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Requested PTT %d is out of range\0A\00", align 1
@OSAL_NULL = common dso_local global %struct.ecore_ptt* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ecore_ptt* @ecore_get_reserved_ptt(%struct.ecore_hwfn* %0, i32 %1) #0 {
  %3 = alloca %struct.ecore_ptt*, align 8
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RESERVED_PTT_MAX, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %10, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.ecore_ptt*, %struct.ecore_ptt** @OSAL_NULL, align 8
  store %struct.ecore_ptt* %13, %struct.ecore_ptt** %3, align 8
  br label %23

14:                                               ; preds = %2
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.ecore_ptt*, %struct.ecore_ptt** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ecore_ptt, %struct.ecore_ptt* %19, i64 %21
  store %struct.ecore_ptt* %22, %struct.ecore_ptt** %3, align 8
  br label %23

23:                                               ; preds = %14, %9
  %24 = load %struct.ecore_ptt*, %struct.ecore_ptt** %3, align 8
  ret %struct.ecore_ptt* %24
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
