; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_get_queue_coalesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_get_queue_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_queue_cid = type { i64 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_AGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_get_queue_coalesce(%struct.ecore_hwfn* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ecore_queue_cid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_ptt*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.ecore_queue_cid*
  store %struct.ecore_queue_cid* %12, %struct.ecore_queue_cid** %8, align 8
  %13 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %15 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %14)
  store %struct.ecore_ptt* %15, %struct.ecore_ptt** %10, align 8
  %16 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %17 = icmp ne %struct.ecore_ptt* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %19, i32* %4, align 4
  br label %53

20:                                               ; preds = %3
  %21 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %8, align 8
  %22 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %28 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %8, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @ecore_get_rxq_coalesce(%struct.ecore_hwfn* %26, %struct.ecore_ptt* %27, %struct.ecore_queue_cid* %28, i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ECORE_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %48

35:                                               ; preds = %25
  br label %47

36:                                               ; preds = %20
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %38 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %39 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %8, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @ecore_get_txq_coalesce(%struct.ecore_hwfn* %37, %struct.ecore_ptt* %38, %struct.ecore_queue_cid* %39, i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ECORE_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %48

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %35
  br label %48

48:                                               ; preds = %47, %45, %34
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %50 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %51 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %49, %struct.ecore_ptt* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_get_rxq_coalesce(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_queue_cid*, i32*) #1

declare dso_local i32 @ecore_get_txq_coalesce(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_queue_cid*, i32*) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
