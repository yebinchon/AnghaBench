; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qdpl_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qdpl_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { %struct.sfxge_tx_dpl }
%struct.sfxge_tx_dpl = type { %struct.mbuf*, %struct.mbuf**, i64, i64 }
%struct.mbuf = type { %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_txq*)* @sfxge_tx_qdpl_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_tx_qdpl_flush(%struct.sfxge_txq* %0) #0 {
  %2 = alloca %struct.sfxge_txq*, align 8
  %3 = alloca %struct.sfxge_tx_dpl*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %2, align 8
  %6 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %7 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %6, i32 0, i32 0
  store %struct.sfxge_tx_dpl* %7, %struct.sfxge_tx_dpl** %3, align 8
  %8 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %9 = call i32 @SFXGE_TXQ_LOCK(%struct.sfxge_txq* %8)
  %10 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %11 = call i32 @sfxge_tx_qdpl_swizzle(%struct.sfxge_txq* %10)
  %12 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %3, align 8
  %13 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %12, i32 0, i32 0
  %14 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %14, %struct.mbuf** %4, align 8
  br label %15

15:                                               ; preds = %24, %1
  %16 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %17 = icmp ne %struct.mbuf* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 0
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  store %struct.mbuf* %21, %struct.mbuf** %5, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = call i32 @m_freem(%struct.mbuf* %22)
  br label %24

24:                                               ; preds = %18
  %25 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %25, %struct.mbuf** %4, align 8
  br label %15

26:                                               ; preds = %15
  %27 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %3, align 8
  %28 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %27, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %28, align 8
  %29 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %3, align 8
  %30 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %3, align 8
  %32 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %3, align 8
  %34 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %33, i32 0, i32 0
  %35 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %3, align 8
  %36 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %35, i32 0, i32 1
  store %struct.mbuf** %34, %struct.mbuf*** %36, align 8
  %37 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %38 = call i32 @SFXGE_TXQ_UNLOCK(%struct.sfxge_txq* %37)
  ret void
}

declare dso_local i32 @SFXGE_TXQ_LOCK(%struct.sfxge_txq*) #1

declare dso_local i32 @sfxge_tx_qdpl_swizzle(%struct.sfxge_txq*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @SFXGE_TXQ_UNLOCK(%struct.sfxge_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
