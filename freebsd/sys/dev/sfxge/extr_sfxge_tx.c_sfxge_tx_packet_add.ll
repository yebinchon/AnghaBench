; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_packet_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_packet_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i32, i32 }
%struct.mbuf = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_txq*, %struct.mbuf*)* @sfxge_tx_packet_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_tx_packet_add(%struct.sfxge_txq* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfxge_txq*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %7 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %8 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @SFXGE_LINK_UP(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %14 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %13, i32 0, i32 0
  %15 = call i32 @atomic_add_long(i32* %14, i32 1)
  %16 = load i32, i32* @ENETDOWN, align 4
  store i32 %16, i32* %3, align 4
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %19 = call i64 @SFXGE_TXQ_TRYLOCK(%struct.sfxge_txq* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %23 = call i32 @sfxge_tx_qdpl_swizzle(%struct.sfxge_txq* %22)
  %24 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %26 = call i32 @sfxge_tx_qdpl_put_locked(%struct.sfxge_txq* %24, %struct.mbuf* %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %28 = call i32 @sfxge_tx_qdpl_service(%struct.sfxge_txq* %27)
  br label %43

29:                                               ; preds = %17
  %30 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %32 = call i32 @sfxge_tx_qdpl_put_unlocked(%struct.sfxge_txq* %30, %struct.mbuf* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %37 = call i64 @SFXGE_TXQ_TRYLOCK(%struct.sfxge_txq* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %41 = call i32 @sfxge_tx_qdpl_service(%struct.sfxge_txq* %40)
  br label %42

42:                                               ; preds = %39, %35, %29
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %45 = call i32 @SFXGE_TXQ_LOCK_ASSERT_NOTOWNED(%struct.sfxge_txq* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @SFXGE_LINK_UP(i32) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local i64 @SFXGE_TXQ_TRYLOCK(%struct.sfxge_txq*) #1

declare dso_local i32 @sfxge_tx_qdpl_swizzle(%struct.sfxge_txq*) #1

declare dso_local i32 @sfxge_tx_qdpl_put_locked(%struct.sfxge_txq*, %struct.mbuf*) #1

declare dso_local i32 @sfxge_tx_qdpl_service(%struct.sfxge_txq*) #1

declare dso_local i32 @sfxge_tx_qdpl_put_unlocked(%struct.sfxge_txq*, %struct.mbuf*) #1

declare dso_local i32 @SFXGE_TXQ_LOCK_ASSERT_NOTOWNED(%struct.sfxge_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
