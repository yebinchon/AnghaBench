; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { i32, i32, i32, i32 }
%struct.upgt_data = type { i32 }
%struct.ieee80211_node = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@UPGT_FLAG_INITDONE = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@st_tx_inactive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upgt_softc*)* @upgt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upgt_start(%struct.upgt_softc* %0) #0 {
  %2 = alloca %struct.upgt_softc*, align 8
  %3 = alloca %struct.upgt_data*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store %struct.upgt_softc* %0, %struct.upgt_softc** %2, align 8
  %6 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %7 = call i32 @UPGT_ASSERT_LOCKED(%struct.upgt_softc* %6)
  %8 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %9 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @UPGT_FLAG_INITDONE, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %67

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %64, %46, %15
  %17 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %18 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %17, i32 0, i32 3
  %19 = call %struct.mbuf* @mbufq_dequeue(i32* %18)
  store %struct.mbuf* %19, %struct.mbuf** %5, align 8
  %20 = icmp ne %struct.mbuf* %19, null
  br i1 %20, label %21, label %67

21:                                               ; preds = %16
  %22 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %23 = call %struct.upgt_data* @upgt_gettxbuf(%struct.upgt_softc* %22)
  store %struct.upgt_data* %23, %struct.upgt_data** %3, align 8
  %24 = load %struct.upgt_data*, %struct.upgt_data** %3, align 8
  %25 = icmp eq %struct.upgt_data* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %28 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %27, i32 0, i32 3
  %29 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %30 = call i32 @mbufq_prepend(i32* %28, %struct.mbuf* %29)
  br label %67

31:                                               ; preds = %21
  %32 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = bitcast i32* %35 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %36, %struct.ieee80211_node** %4, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %42 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %43 = load %struct.upgt_data*, %struct.upgt_data** %3, align 8
  %44 = call i64 @upgt_tx_start(%struct.upgt_softc* %40, %struct.mbuf* %41, %struct.ieee80211_node* %42, %struct.upgt_data* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %31
  %47 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %53 = call i32 @if_inc_counter(i32 %51, i32 %52, i32 1)
  %54 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %55 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %54, i32 0, i32 2
  %56 = load %struct.upgt_data*, %struct.upgt_data** %3, align 8
  %57 = load i32, i32* @next, align 4
  %58 = call i32 @STAILQ_INSERT_HEAD(i32* %55, %struct.upgt_data* %56, i32 %57)
  %59 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %60 = load i32, i32* @st_tx_inactive, align 4
  %61 = call i32 @UPGT_STAT_INC(%struct.upgt_softc* %59, i32 %60)
  %62 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %63 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %62)
  br label %16

64:                                               ; preds = %31
  %65 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %66 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %65, i32 0, i32 1
  store i32 5, i32* %66, align 4
  br label %16

67:                                               ; preds = %14, %26, %16
  ret void
}

declare dso_local i32 @UPGT_ASSERT_LOCKED(%struct.upgt_softc*) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local %struct.upgt_data* @upgt_gettxbuf(%struct.upgt_softc*) #1

declare dso_local i32 @mbufq_prepend(i32*, %struct.mbuf*) #1

declare dso_local i64 @upgt_tx_start(%struct.upgt_softc*, %struct.mbuf*, %struct.ieee80211_node*, %struct.upgt_data*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.upgt_data*, i32) #1

declare dso_local i32 @UPGT_STAT_INC(%struct.upgt_softc*, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
