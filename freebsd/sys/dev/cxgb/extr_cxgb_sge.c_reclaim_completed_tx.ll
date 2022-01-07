; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_reclaim_completed_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_reclaim_completed_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { i32, i32, %struct.sge_txq* }
%struct.sge_txq = type { i32, i32 }

@cxgb_tx_reclaim_threshold = common dso_local global i64 0, align 8
@TX_RECLAIM_MAX = common dso_local global i64 0, align 8
@TX_RECLAIM_MIN = common dso_local global i64 0, align 8
@TX_RECLAIM_DEFAULT = common dso_local global i64 0, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@TXQ_ETH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_qset*, i32, i32)* @reclaim_completed_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reclaim_completed_tx(%struct.sge_qset* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sge_qset*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sge_txq*, align 8
  %9 = alloca i32, align 4
  store %struct.sge_qset* %0, %struct.sge_qset** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %11 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %10, i32 0, i32 2
  %12 = load %struct.sge_txq*, %struct.sge_txq** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %12, i64 %14
  store %struct.sge_txq* %15, %struct.sge_txq** %8, align 8
  %16 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %17 = call i32 @desc_reclaimable(%struct.sge_txq* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* @cxgb_tx_reclaim_threshold, align 8
  %19 = load i64, i64* @TX_RECLAIM_MAX, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* @cxgb_tx_reclaim_threshold, align 8
  %23 = load i64, i64* @TX_RECLAIM_MIN, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %3
  %26 = load i64, i64* @TX_RECLAIM_DEFAULT, align 8
  store i64 %26, i64* @cxgb_tx_reclaim_threshold, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %67

32:                                               ; preds = %27
  %33 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %34 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %33, i32 0, i32 1
  %35 = load i32, i32* @MA_OWNED, align 4
  %36 = call i32 @mtx_assert(i32* %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @t3_free_tx_desc(%struct.sge_qset* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %46 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %51 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %39, %32
  %55 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %56 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %55, i32 0, i32 0
  %57 = load i32, i32* @TXQ_ETH, align 4
  %58 = call i64 @isset(i32* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %62 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %61, i32 0, i32 0
  %63 = load i32, i32* @TXQ_ETH, align 4
  %64 = call i32 @clrbit(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %54
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %31
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @desc_reclaimable(%struct.sge_txq*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @t3_free_tx_desc(%struct.sge_qset*, i32, i32) #1

declare dso_local i64 @isset(i32*, i32) #1

declare dso_local i32 @clrbit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
