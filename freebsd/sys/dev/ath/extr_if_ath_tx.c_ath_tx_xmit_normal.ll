; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_xmit_normal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_xmit_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_txq = type { i32 }
%struct.ath_buf = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ath_node = type { %struct.ath_tid* }
%struct.ath_tid = type { i32 }

@HAL_TXDESC_CLRDMASK = common dso_local global i32 0, align 4
@ath_tx_normal_comp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_txq*, %struct.ath_buf*)* @ath_tx_xmit_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_xmit_normal(%struct.ath_softc* %0, %struct.ath_txq* %1, %struct.ath_buf* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_txq*, align 8
  %6 = alloca %struct.ath_buf*, align 8
  %7 = alloca %struct.ath_node*, align 8
  %8 = alloca %struct.ath_tid*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_txq* %1, %struct.ath_txq** %5, align 8
  store %struct.ath_buf* %2, %struct.ath_buf** %6, align 8
  %9 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %10 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.ath_node* @ATH_NODE(i32 %11)
  store %struct.ath_node* %12, %struct.ath_node** %7, align 8
  %13 = load %struct.ath_node*, %struct.ath_node** %7, align 8
  %14 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %13, i32 0, i32 0
  %15 = load %struct.ath_tid*, %struct.ath_tid** %14, align 8
  %16 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %17 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %15, i64 %19
  store %struct.ath_tid* %20, %struct.ath_tid** %8, align 8
  %21 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %22 = call i32 @ATH_TX_LOCK_ASSERT(%struct.ath_softc* %21)
  %23 = load i32, i32* @HAL_TXDESC_CLRDMASK, align 4
  %24 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %25 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 8
  %29 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %30 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %31 = call i32 @ath_tx_do_ratelookup(%struct.ath_softc* %29, %struct.ath_buf* %30)
  %32 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %33 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %34 = call i32 @ath_tx_calc_duration(%struct.ath_softc* %32, %struct.ath_buf* %33)
  %35 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %36 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %37 = call i32 @ath_tx_calc_protection(%struct.ath_softc* %35, %struct.ath_buf* %36)
  %38 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %39 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %40 = call i32 @ath_tx_set_rtscts(%struct.ath_softc* %38, %struct.ath_buf* %39)
  %41 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %42 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %43 = call i32 @ath_tx_rate_fill_rcflags(%struct.ath_softc* %41, %struct.ath_buf* %42)
  %44 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %45 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %46 = call i32 @ath_tx_setds(%struct.ath_softc* %44, %struct.ath_buf* %45)
  %47 = load %struct.ath_tid*, %struct.ath_tid** %8, align 8
  %48 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @ath_tx_normal_comp, align 4
  %52 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %53 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %55 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %56 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %57 = call i32 @ath_tx_handoff(%struct.ath_softc* %54, %struct.ath_txq* %55, %struct.ath_buf* %56)
  ret void
}

declare dso_local %struct.ath_node* @ATH_NODE(i32) #1

declare dso_local i32 @ATH_TX_LOCK_ASSERT(%struct.ath_softc*) #1

declare dso_local i32 @ath_tx_do_ratelookup(%struct.ath_softc*, %struct.ath_buf*) #1

declare dso_local i32 @ath_tx_calc_duration(%struct.ath_softc*, %struct.ath_buf*) #1

declare dso_local i32 @ath_tx_calc_protection(%struct.ath_softc*, %struct.ath_buf*) #1

declare dso_local i32 @ath_tx_set_rtscts(%struct.ath_softc*, %struct.ath_buf*) #1

declare dso_local i32 @ath_tx_rate_fill_rcflags(%struct.ath_softc*, %struct.ath_buf*) #1

declare dso_local i32 @ath_tx_setds(%struct.ath_softc*, %struct.ath_buf*) #1

declare dso_local i32 @ath_tx_handoff(%struct.ath_softc*, %struct.ath_txq*, %struct.ath_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
