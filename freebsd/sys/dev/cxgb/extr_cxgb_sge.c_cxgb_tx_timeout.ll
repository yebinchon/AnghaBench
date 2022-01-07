; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_cxgb_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_cxgb_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { i32, i32, %struct.sge_txq* }
%struct.sge_txq = type { i32, i32 }

@TXQ_ETH = common dso_local global i64 0, align 8
@QS_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cxgb_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb_tx_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sge_qset*, align 8
  %4 = alloca %struct.sge_txq*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.sge_qset*
  store %struct.sge_qset* %6, %struct.sge_qset** %3, align 8
  %7 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %8 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %7, i32 0, i32 2
  %9 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %10 = load i64, i64* @TXQ_ETH, align 8
  %11 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %9, i64 %10
  store %struct.sge_txq* %11, %struct.sge_txq** %4, align 8
  %12 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %13 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %18 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %21 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 3
  %24 = icmp sge i32 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %27 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %16, %1
  %29 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %30 = call i64 @TXQ_TRYLOCK(%struct.sge_qset* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i32, i32* @QS_TIMEOUT, align 4
  %34 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %35 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %39 = call i32 @cxgb_start_locked(%struct.sge_qset* %38)
  %40 = load i32, i32* @QS_TIMEOUT, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %43 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %47 = call i32 @TXQ_UNLOCK(%struct.sge_qset* %46)
  br label %48

48:                                               ; preds = %32, %28
  ret void
}

declare dso_local i64 @TXQ_TRYLOCK(%struct.sge_qset*) #1

declare dso_local i32 @cxgb_start_locked(%struct.sge_qset*) #1

declare dso_local i32 @TXQ_UNLOCK(%struct.sge_qset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
