; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_set_queue_coalesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_set_queue_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.ecore_queue_cid = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_AGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_set_queue_coalesce(%struct.ecore_hwfn* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ecore_queue_cid*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_ptt*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.ecore_queue_cid*
  store %struct.ecore_queue_cid* %14, %struct.ecore_queue_cid** %10, align 8
  %15 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %17 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %16)
  store %struct.ecore_ptt* %17, %struct.ecore_ptt** %12, align 8
  %18 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %19 = icmp ne %struct.ecore_ptt* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %21, i32* %5, align 4
  br label %64

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %10, align 8
  %30 = call i32 @ecore_set_rxq_coalesce(%struct.ecore_hwfn* %26, %struct.ecore_ptt* %27, i8* %28, %struct.ecore_queue_cid* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %59

34:                                               ; preds = %25
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %37 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i8* %35, i8** %39, align 8
  br label %40

40:                                               ; preds = %34, %22
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %45 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %10, align 8
  %48 = call i32 @ecore_set_txq_coalesce(%struct.ecore_hwfn* %44, %struct.ecore_ptt* %45, i8* %46, %struct.ecore_queue_cid* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %59

52:                                               ; preds = %43
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %55 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* %53, i8** %57, align 8
  br label %58

58:                                               ; preds = %52, %40
  br label %59

59:                                               ; preds = %58, %51, %33
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %61 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %62 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %60, %struct.ecore_ptt* %61)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %20
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_set_rxq_coalesce(%struct.ecore_hwfn*, %struct.ecore_ptt*, i8*, %struct.ecore_queue_cid*) #1

declare dso_local i32 @ecore_set_txq_coalesce(%struct.ecore_hwfn*, %struct.ecore_ptt*, i8*, %struct.ecore_queue_cid*) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
