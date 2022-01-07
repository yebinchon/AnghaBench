; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.otus_softc* }
%struct.otus_softc = type { i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }
%struct.otus_data = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @otus_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otus_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.otus_softc*, align 8
  %10 = alloca %struct.otus_data*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 0
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %13, align 8
  store %struct.ieee80211com* %14, %struct.ieee80211com** %8, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 0
  %17 = load %struct.otus_softc*, %struct.otus_softc** %16, align 8
  store %struct.otus_softc* %17, %struct.otus_softc** %9, align 8
  store %struct.otus_data* null, %struct.otus_data** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.otus_softc*, %struct.otus_softc** %9, align 8
  %19 = call i32 @OTUS_LOCK(%struct.otus_softc* %18)
  %20 = load %struct.otus_softc*, %struct.otus_softc** %9, align 8
  %21 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENETDOWN, align 4
  store i32 %25, i32* %11, align 4
  br label %46

26:                                               ; preds = %3
  %27 = load %struct.otus_softc*, %struct.otus_softc** %9, align 8
  %28 = call %struct.otus_data* @otus_getbuf(%struct.otus_softc* %27)
  store %struct.otus_data* %28, %struct.otus_data** %10, align 8
  %29 = load %struct.otus_data*, %struct.otus_data** %10, align 8
  %30 = icmp eq %struct.otus_data* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOBUFS, align 4
  store i32 %32, i32* %11, align 4
  br label %46

33:                                               ; preds = %26
  %34 = load %struct.otus_softc*, %struct.otus_softc** %9, align 8
  %35 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %37 = load %struct.otus_data*, %struct.otus_data** %10, align 8
  %38 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %39 = call i64 @otus_tx(%struct.otus_softc* %34, %struct.ieee80211_node* %35, %struct.mbuf* %36, %struct.otus_data* %37, %struct.ieee80211_bpf_params* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @EIO, align 4
  store i32 %42, i32* %11, align 4
  br label %46

43:                                               ; preds = %33
  %44 = load %struct.otus_softc*, %struct.otus_softc** %9, align 8
  %45 = call i32 @OTUS_UNLOCK(%struct.otus_softc* %44)
  store i32 0, i32* %4, align 4
  br label %59

46:                                               ; preds = %41, %31, %24
  %47 = load %struct.otus_data*, %struct.otus_data** %10, align 8
  %48 = icmp ne %struct.otus_data* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.otus_softc*, %struct.otus_softc** %9, align 8
  %51 = load %struct.otus_data*, %struct.otus_data** %10, align 8
  %52 = call i32 @otus_freebuf(%struct.otus_softc* %50, %struct.otus_data* %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.otus_softc*, %struct.otus_softc** %9, align 8
  %55 = call i32 @OTUS_UNLOCK(%struct.otus_softc* %54)
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = call i32 @m_freem(%struct.mbuf* %56)
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %43
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @OTUS_LOCK(%struct.otus_softc*) #1

declare dso_local %struct.otus_data* @otus_getbuf(%struct.otus_softc*) #1

declare dso_local i64 @otus_tx(%struct.otus_softc*, %struct.ieee80211_node*, %struct.mbuf*, %struct.otus_data*, %struct.ieee80211_bpf_params*) #1

declare dso_local i32 @OTUS_UNLOCK(%struct.otus_softc*) #1

declare dso_local i32 @otus_freebuf(%struct.otus_softc*, %struct.otus_data*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
