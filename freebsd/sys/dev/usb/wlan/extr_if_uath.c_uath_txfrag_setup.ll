; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_txfrag_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_txfrag_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32 }
%struct.mbuf = type { %struct.mbuf* }
%struct.ieee80211_node = type { i32 }
%struct.uath_data = type { i32 }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*, i32*, %struct.mbuf*, %struct.ieee80211_node*)* @uath_txfrag_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_txfrag_setup(%struct.uath_softc* %0, i32* %1, %struct.mbuf* %2, %struct.ieee80211_node* %3) #0 {
  %5 = alloca %struct.uath_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.ieee80211_node*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.uath_data*, align 8
  store %struct.uath_softc* %0, %struct.uath_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store %struct.ieee80211_node* %3, %struct.ieee80211_node** %8, align 8
  %11 = load %struct.uath_softc*, %struct.uath_softc** %5, align 8
  %12 = call i32 @UATH_ASSERT_LOCKED(%struct.uath_softc* %11)
  %13 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %15, %struct.mbuf** %9, align 8
  br label %16

16:                                               ; preds = %36, %4
  %17 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load %struct.uath_softc*, %struct.uath_softc** %5, align 8
  %21 = call %struct.uath_data* @uath_getbuf(%struct.uath_softc* %20)
  store %struct.uath_data* %21, %struct.uath_data** %10, align 8
  %22 = load %struct.uath_data*, %struct.uath_data** %10, align 8
  %23 = icmp eq %struct.uath_data* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.uath_softc*, %struct.uath_softc** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %28 = call i32 @uath_txfrag_cleanup(%struct.uath_softc* %25, i32* %26, %struct.ieee80211_node* %27)
  br label %40

29:                                               ; preds = %19
  %30 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %31 = call i32 @ieee80211_node_incref(%struct.ieee80211_node* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.uath_data*, %struct.uath_data** %10, align 8
  %34 = load i32, i32* @next, align 4
  %35 = call i32 @STAILQ_INSERT_TAIL(i32* %32, %struct.uath_data* %33, i32 %34)
  br label %36

36:                                               ; preds = %29
  %37 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 0
  %39 = load %struct.mbuf*, %struct.mbuf** %38, align 8
  store %struct.mbuf* %39, %struct.mbuf** %9, align 8
  br label %16

40:                                               ; preds = %24, %16
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @STAILQ_EMPTY(i32* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local i32 @UATH_ASSERT_LOCKED(%struct.uath_softc*) #1

declare dso_local %struct.uath_data* @uath_getbuf(%struct.uath_softc*) #1

declare dso_local i32 @uath_txfrag_cleanup(%struct.uath_softc*, i32*, %struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_node_incref(%struct.ieee80211_node*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.uath_data*, i32) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
