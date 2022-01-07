; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qdpl_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qdpl_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_txq*)* @sfxge_tx_qdpl_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_tx_qdpl_service(%struct.sfxge_txq* %0) #0 {
  %2 = alloca %struct.sfxge_txq*, align 8
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %2, align 8
  %3 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %4 = call i32 @SFXGE_TXQ_LOCK_ASSERT_OWNED(%struct.sfxge_txq* %3)
  br label %5

5:                                                ; preds = %31, %1
  %6 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %7 = call i64 @SFXGE_TX_QDPL_PENDING(%struct.sfxge_txq* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %11 = call i32 @sfxge_tx_qdpl_swizzle(%struct.sfxge_txq* %10)
  br label %12

12:                                               ; preds = %9, %5
  %13 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %14 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %19 = call i32 @sfxge_tx_qdpl_drain(%struct.sfxge_txq* %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %22 = call i32 @SFXGE_TXQ_UNLOCK(%struct.sfxge_txq* %21)
  br label %23

23:                                               ; preds = %20
  %24 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %25 = call i64 @SFXGE_TX_QDPL_PENDING(%struct.sfxge_txq* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %29 = call i64 @SFXGE_TXQ_TRYLOCK(%struct.sfxge_txq* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %5, label %33

33:                                               ; preds = %31
  ret void
}

declare dso_local i32 @SFXGE_TXQ_LOCK_ASSERT_OWNED(%struct.sfxge_txq*) #1

declare dso_local i64 @SFXGE_TX_QDPL_PENDING(%struct.sfxge_txq*) #1

declare dso_local i32 @sfxge_tx_qdpl_swizzle(%struct.sfxge_txq*) #1

declare dso_local i32 @sfxge_tx_qdpl_drain(%struct.sfxge_txq*) #1

declare dso_local i32 @SFXGE_TXQ_UNLOCK(%struct.sfxge_txq*) #1

declare dso_local i64 @SFXGE_TXQ_TRYLOCK(%struct.sfxge_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
