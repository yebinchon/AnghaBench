; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_cxgb_tx_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_cxgb_tx_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { i32, %struct.TYPE_5__*, i32, %struct.sge_txq* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sge_txq = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TXQ_ETH = common dso_local global i64 0, align 8
@cxgb_tx_coalesce_enable_stop = common dso_local global i64 0, align 8
@cxgb_tx_coalesce_enable_start = common dso_local global i64 0, align 8
@QS_FLUSHING = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb_tx_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sge_qset*, align 8
  %4 = alloca %struct.sge_txq*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.sge_qset*
  store %struct.sge_qset* %6, %struct.sge_qset** %3, align 8
  %7 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %8 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %7, i32 0, i32 3
  %9 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %10 = load i64, i64* @TXQ_ETH, align 8
  %11 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %9, i64 %10
  store %struct.sge_txq* %11, %struct.sge_txq** %4, align 8
  %12 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %13 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %18 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @cxgb_tx_coalesce_enable_stop, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %24 = call i64 @TXQ_RING_EMPTY(%struct.sge_qset* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %28 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %44

29:                                               ; preds = %22, %16, %1
  %30 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %31 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %36 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @cxgb_tx_coalesce_enable_start, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %42 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %34, %29
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %46 = call i64 @TXQ_TRYLOCK(%struct.sge_qset* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load i32, i32* @QS_FLUSHING, align 4
  %50 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %51 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %55 = call i32 @cxgb_start_locked(%struct.sge_qset* %54)
  %56 = load i32, i32* @QS_FLUSHING, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %59 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %63 = call i32 @TXQ_UNLOCK(%struct.sge_qset* %62)
  br label %64

64:                                               ; preds = %48, %44
  %65 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %66 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %64
  %76 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %77 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %76, i32 0, i32 1
  %78 = load i32, i32* @hz, align 4
  %79 = sdiv i32 %78, 4
  %80 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %81 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %82 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @callout_reset_on(%struct.TYPE_6__* %77, i32 %79, void (i8*)* @cxgb_tx_watchdog, %struct.sge_qset* %80, i32 %84)
  br label %86

86:                                               ; preds = %75, %64
  ret void
}

declare dso_local i64 @TXQ_RING_EMPTY(%struct.sge_qset*) #1

declare dso_local i64 @TXQ_TRYLOCK(%struct.sge_qset*) #1

declare dso_local i32 @cxgb_start_locked(%struct.sge_qset*) #1

declare dso_local i32 @TXQ_UNLOCK(%struct.sge_qset*) #1

declare dso_local i32 @callout_reset_on(%struct.TYPE_6__*, i32, void (i8*)*, %struct.sge_qset*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
