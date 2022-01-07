; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_pio_handle_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_pio_handle_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i64 }
%struct.bwn_txstatus = type { i32 }
%struct.bwn_pio_txqueue = type { i32, i32, i32 }
%struct.bwn_pio_txpkt = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@tp_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, %struct.bwn_txstatus*)* @bwn_pio_handle_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_pio_handle_txeof(%struct.bwn_mac* %0, %struct.bwn_txstatus* %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_txstatus*, align 8
  %5 = alloca %struct.bwn_pio_txqueue*, align 8
  %6 = alloca %struct.bwn_pio_txpkt*, align 8
  %7 = alloca %struct.bwn_softc*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store %struct.bwn_txstatus* %1, %struct.bwn_txstatus** %4, align 8
  store %struct.bwn_pio_txpkt* null, %struct.bwn_pio_txpkt** %6, align 8
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 0
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  store %struct.bwn_softc* %10, %struct.bwn_softc** %7, align 8
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %12 = call i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc* %11)
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %14 = load %struct.bwn_txstatus*, %struct.bwn_txstatus** %4, align 8
  %15 = getelementptr inbounds %struct.bwn_txstatus, %struct.bwn_txstatus* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.bwn_pio_txqueue* @bwn_pio_parse_cookie(%struct.bwn_mac* %13, i32 %16, %struct.bwn_pio_txpkt** %6)
  store %struct.bwn_pio_txqueue* %17, %struct.bwn_pio_txqueue** %5, align 8
  %18 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %19 = icmp eq %struct.bwn_pio_txqueue* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %71

21:                                               ; preds = %2
  %22 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %6, align 8
  %23 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %29 = call i64 @BWN_HDRSIZE(%struct.bwn_mac* %28)
  %30 = add nsw i64 %27, %29
  %31 = call i64 @roundup(i64 %30, i32 4)
  %32 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %33 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %39 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %6, align 8
  %43 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %21
  %47 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %6, align 8
  %48 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.bwn_txstatus*, %struct.bwn_txstatus** %4, align 8
  %51 = call i32 @bwn_ratectl_tx_complete(i32* %49, %struct.bwn_txstatus* %50)
  br label %52

52:                                               ; preds = %46, %21
  %53 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %6, align 8
  %54 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %6, align 8
  %57 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = call i32 @ieee80211_tx_complete(i32* %55, %struct.TYPE_4__* %58, i32 0)
  %60 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %6, align 8
  %61 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %6, align 8
  %63 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %62, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %63, align 8
  %64 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %5, align 8
  %65 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %64, i32 0, i32 0
  %66 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %6, align 8
  %67 = load i32, i32* @tp_list, align 4
  %68 = call i32 @TAILQ_INSERT_TAIL(i32* %65, %struct.bwn_pio_txpkt* %66, i32 %67)
  %69 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %70 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %52, %20
  ret void
}

declare dso_local i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc*) #1

declare dso_local %struct.bwn_pio_txqueue* @bwn_pio_parse_cookie(%struct.bwn_mac*, i32, %struct.bwn_pio_txpkt**) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i64 @BWN_HDRSIZE(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_ratectl_tx_complete(i32*, %struct.bwn_txstatus*) #1

declare dso_local i32 @ieee80211_tx_complete(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.bwn_pio_txpkt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
