; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_update_clrdmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_update_clrdmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_tid = type { i32 }
%struct.ath_buf = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ath_node = type { i32 }

@HAL_TXDESC_CLRDMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_tid*, %struct.ath_buf*)* @ath_tx_update_clrdmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_update_clrdmask(%struct.ath_softc* %0, %struct.ath_tid* %1, %struct.ath_buf* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_tid*, align 8
  %6 = alloca %struct.ath_buf*, align 8
  %7 = alloca %struct.ath_node*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_tid* %1, %struct.ath_tid** %5, align 8
  store %struct.ath_buf* %2, %struct.ath_buf** %6, align 8
  %8 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %9 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ath_node* @ATH_NODE(i32 %10)
  store %struct.ath_node* %11, %struct.ath_node** %7, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %13 = call i32 @ATH_TX_LOCK_ASSERT(%struct.ath_softc* %12)
  %14 = load %struct.ath_node*, %struct.ath_node** %7, align 8
  %15 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i32, i32* @HAL_TXDESC_CLRDMASK, align 4
  %20 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %21 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load %struct.ath_node*, %struct.ath_node** %7, align 8
  %26 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %18, %3
  ret void
}

declare dso_local %struct.ath_node* @ATH_NODE(i32) #1

declare dso_local i32 @ATH_TX_LOCK_ASSERT(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
