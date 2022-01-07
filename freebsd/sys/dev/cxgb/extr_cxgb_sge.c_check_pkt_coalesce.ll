; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_check_pkt_coalesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_check_pkt_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { i64, i64, %struct.TYPE_2__*, %struct.sge_txq* }
%struct.TYPE_2__ = type { %struct.adapter* }
%struct.adapter = type { i32*, i32 }
%struct.sge_txq = type { i64 }

@cxgb_tx_coalesce_force = common dso_local global i32 0, align 4
@TXQ_ETH = common dso_local global i64 0, align 8
@cxgb_tx_coalesce_enable_start = common dso_local global i64 0, align 8
@COALESCE_START_MAX = common dso_local global i64 0, align 8
@cxgb_tx_coalesce_enable_stop = common dso_local global i64 0, align 8
@COALESCE_STOP_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_qset*)* @check_pkt_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pkt_coalesce(%struct.sge_qset* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sge_qset*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.sge_txq*, align 8
  %6 = alloca i32*, align 8
  store %struct.sge_qset* %0, %struct.sge_qset** %3, align 8
  %7 = load i32, i32* @cxgb_tx_coalesce_force, align 4
  %8 = call i64 @__predict_false(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %78

11:                                               ; preds = %1
  %12 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %13 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %12, i32 0, i32 3
  %14 = load %struct.sge_txq*, %struct.sge_txq** %13, align 8
  %15 = load i64, i64* @TXQ_ETH, align 8
  %16 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %14, i64 %15
  store %struct.sge_txq* %16, %struct.sge_txq** %5, align 8
  %17 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %18 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.adapter*, %struct.adapter** %20, align 8
  store %struct.adapter* %21, %struct.adapter** %4, align 8
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %26 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32* %28, i32** %6, align 8
  %29 = load i64, i64* @cxgb_tx_coalesce_enable_start, align 8
  %30 = load i64, i64* @COALESCE_START_MAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %11
  %33 = load i64, i64* @COALESCE_START_MAX, align 8
  store i64 %33, i64* @cxgb_tx_coalesce_enable_start, align 8
  br label %34

34:                                               ; preds = %32, %11
  %35 = load i64, i64* @cxgb_tx_coalesce_enable_stop, align 8
  %36 = load i64, i64* @COALESCE_STOP_MIN, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @COALESCE_STOP_MIN, align 8
  store i64 %39, i64* @cxgb_tx_coalesce_enable_start, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %46 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @cxgb_tx_coalesce_enable_stop, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %52 = call i64 @TXQ_RING_EMPTY(%struct.sge_qset* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %56 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32*, i32** %6, align 8
  store i32 0, i32* %60, align 4
  br label %74

61:                                               ; preds = %54, %50, %44, %40
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %67 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @cxgb_tx_coalesce_enable_start, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32*, i32** %6, align 8
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %65, %61
  br label %74

74:                                               ; preds = %73, %59
  %75 = load %struct.adapter*, %struct.adapter** %4, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %10
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @TXQ_RING_EMPTY(%struct.sge_qset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
