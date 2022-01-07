; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_tid_cleanup_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_tid_cleanup_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_node = type { %struct.ath_tid* }
%struct.ath_tid = type { i32 }
%struct.ath_buf = type { %struct.ath_buf*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@bf_list = common dso_local global i32 0, align 4
@ath_tx_normal_comp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_node*, i32, %struct.ath_buf*, i32*)* @ath_tx_tid_cleanup_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_tid_cleanup_frame(%struct.ath_softc* %0, %struct.ath_node* %1, i32 %2, %struct.ath_buf* %3, i32* %4) #0 {
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_buf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ath_tid*, align 8
  %12 = alloca %struct.ath_buf*, align 8
  %13 = alloca %struct.ath_buf*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %6, align 8
  store %struct.ath_node* %1, %struct.ath_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ath_buf* %3, %struct.ath_buf** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.ath_node*, %struct.ath_node** %7, align 8
  %15 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %14, i32 0, i32 0
  %16 = load %struct.ath_tid*, %struct.ath_tid** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %16, i64 %18
  store %struct.ath_tid* %19, %struct.ath_tid** %11, align 8
  %20 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %21 = call i32 @ATH_TX_LOCK_ASSERT(%struct.ath_softc* %20)
  %22 = load %struct.ath_tid*, %struct.ath_tid** %11, align 8
  %23 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %24 = load i32, i32* @bf_list, align 4
  %25 = call i32 @ATH_TID_REMOVE(%struct.ath_tid* %22, %struct.ath_buf* %23, i32 %24)
  %26 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  store %struct.ath_buf* %26, %struct.ath_buf** %12, align 8
  br label %27

27:                                               ; preds = %48, %5
  %28 = load %struct.ath_buf*, %struct.ath_buf** %12, align 8
  %29 = icmp ne %struct.ath_buf* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %27
  %31 = load %struct.ath_buf*, %struct.ath_buf** %12, align 8
  %32 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %31, i32 0, i32 0
  %33 = load %struct.ath_buf*, %struct.ath_buf** %32, align 8
  store %struct.ath_buf* %33, %struct.ath_buf** %13, align 8
  %34 = load %struct.ath_buf*, %struct.ath_buf** %12, align 8
  %35 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %41 = load %struct.ath_node*, %struct.ath_node** %7, align 8
  %42 = load %struct.ath_tid*, %struct.ath_tid** %11, align 8
  %43 = load %struct.ath_buf*, %struct.ath_buf** %12, align 8
  %44 = call i32 @ath_tx_update_baw(%struct.ath_softc* %40, %struct.ath_node* %41, %struct.ath_tid* %42, %struct.ath_buf* %43)
  %45 = load %struct.ath_buf*, %struct.ath_buf** %12, align 8
  %46 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %39, %30
  %49 = load i32, i32* @ath_tx_normal_comp, align 4
  %50 = load %struct.ath_buf*, %struct.ath_buf** %12, align 8
  %51 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ath_buf*, %struct.ath_buf** %12, align 8
  %53 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %52, i32 0, i32 0
  store %struct.ath_buf* null, %struct.ath_buf** %53, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.ath_buf*, %struct.ath_buf** %12, align 8
  %56 = load i32, i32* @bf_list, align 4
  %57 = call i32 @TAILQ_INSERT_TAIL(i32* %54, %struct.ath_buf* %55, i32 %56)
  %58 = load %struct.ath_buf*, %struct.ath_buf** %13, align 8
  store %struct.ath_buf* %58, %struct.ath_buf** %12, align 8
  br label %27

59:                                               ; preds = %27
  ret void
}

declare dso_local i32 @ATH_TX_LOCK_ASSERT(%struct.ath_softc*) #1

declare dso_local i32 @ATH_TID_REMOVE(%struct.ath_tid*, %struct.ath_buf*, i32) #1

declare dso_local i32 @ath_tx_update_baw(%struct.ath_softc*, %struct.ath_node*, %struct.ath_tid*, %struct.ath_buf*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ath_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
