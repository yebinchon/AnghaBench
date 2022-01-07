; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_tx_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_tx_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { i64, i32*, i32, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_bpf_params = type { i32, i32 }
%struct.ural_tx_data = type { i32, i32, %struct.ieee80211_node*, %struct.mbuf* }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no raw xmit params\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_BPF_NOACK = common dso_local global i32 0, align 4
@RAL_TX_ACK = common dso_local global i32 0, align 4
@IEEE80211_BPF_RTS = common dso_local global i32 0, align 4
@IEEE80211_BPF_CTS = common dso_local global i32 0, align 4
@IEEE80211_PROT_RTSCTS = common dso_local global i32 0, align 4
@IEEE80211_PROT_CTSONLY = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RAL_TX_IFS_SIFS = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"sending raw frame len=%u rate=%u\0A\00", align 1
@URAL_BULK_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ural_softc*, %struct.mbuf*, %struct.ieee80211_node*, %struct.ieee80211_bpf_params*)* @ural_tx_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ural_tx_raw(%struct.ural_softc* %0, %struct.mbuf* %1, %struct.ieee80211_node* %2, %struct.ieee80211_bpf_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ural_softc*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.ieee80211_node*, align 8
  %9 = alloca %struct.ieee80211_bpf_params*, align 8
  %10 = alloca %struct.ieee80211com*, align 8
  %11 = alloca %struct.ural_tx_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %8, align 8
  store %struct.ieee80211_bpf_params* %3, %struct.ieee80211_bpf_params** %9, align 8
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 0
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %16, align 8
  store %struct.ieee80211com* %17, %struct.ieee80211com** %10, align 8
  %18 = load %struct.ural_softc*, %struct.ural_softc** %6, align 8
  %19 = load i32, i32* @MA_OWNED, align 4
  %20 = call i32 @RAL_LOCK_ASSERT(%struct.ural_softc* %18, i32 %19)
  %21 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %9, align 8
  %22 = icmp ne %struct.ieee80211_bpf_params* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %9, align 8
  %26 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %10, align 8
  %29 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @ieee80211_isratevalid(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %36 = call i32 @m_freem(%struct.mbuf* %35)
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %5, align 4
  br label %140

38:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  %39 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %9, align 8
  %40 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_BPF_NOACK, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @RAL_TX_ACK, align 4
  %47 = load i32, i32* %12, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IEEE80211_BPF_RTS, align 4
  %54 = load i32, i32* @IEEE80211_BPF_CTS, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %49
  %59 = load %struct.ural_softc*, %struct.ural_softc** %6, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %61 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %62 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %9, align 8
  %63 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IEEE80211_BPF_RTS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* @IEEE80211_PROT_RTSCTS, align 4
  br label %72

70:                                               ; preds = %58
  %71 = load i32, i32* @IEEE80211_PROT_CTSONLY, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @ural_sendprot(%struct.ural_softc* %59, %struct.mbuf* %60, %struct.ieee80211_node* %61, i32 %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %72
  %79 = load %struct.ural_softc*, %struct.ural_softc** %6, align 8
  %80 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78, %72
  %84 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %85 = call i32 @m_freem(%struct.mbuf* %84)
  %86 = load i32, i32* @ENOBUFS, align 4
  store i32 %86, i32* %5, align 4
  br label %140

87:                                               ; preds = %78
  %88 = load i32, i32* @RAL_TX_IFS_SIFS, align 4
  %89 = load i32, i32* %12, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %87, %49
  %92 = load %struct.ural_softc*, %struct.ural_softc** %6, align 8
  %93 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %92, i32 0, i32 3
  %94 = call %struct.ural_tx_data* @STAILQ_FIRST(i32* %93)
  store %struct.ural_tx_data* %94, %struct.ural_tx_data** %11, align 8
  %95 = load %struct.ural_softc*, %struct.ural_softc** %6, align 8
  %96 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %95, i32 0, i32 3
  %97 = load i32, i32* @next, align 4
  %98 = call i32 @STAILQ_REMOVE_HEAD(i32* %96, i32 %97)
  %99 = load %struct.ural_softc*, %struct.ural_softc** %6, align 8
  %100 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, -1
  store i64 %102, i64* %100, align 8
  %103 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %104 = load %struct.ural_tx_data*, %struct.ural_tx_data** %11, align 8
  %105 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %104, i32 0, i32 3
  store %struct.mbuf* %103, %struct.mbuf** %105, align 8
  %106 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %107 = load %struct.ural_tx_data*, %struct.ural_tx_data** %11, align 8
  %108 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %107, i32 0, i32 2
  store %struct.ieee80211_node* %106, %struct.ieee80211_node** %108, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.ural_tx_data*, %struct.ural_tx_data** %11, align 8
  %111 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.ural_softc*, %struct.ural_softc** %6, align 8
  %113 = load %struct.ural_tx_data*, %struct.ural_tx_data** %11, align 8
  %114 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %113, i32 0, i32 1
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %117 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @ural_setup_tx_desc(%struct.ural_softc* %112, i32* %114, i32 %115, i32 %119, i32 %120)
  %122 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %123 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @DPRINTFN(i32 10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load %struct.ural_softc*, %struct.ural_softc** %6, align 8
  %129 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %128, i32 0, i32 2
  %130 = load %struct.ural_tx_data*, %struct.ural_tx_data** %11, align 8
  %131 = load i32, i32* @next, align 4
  %132 = call i32 @STAILQ_INSERT_TAIL(i32* %129, %struct.ural_tx_data* %130, i32 %131)
  %133 = load %struct.ural_softc*, %struct.ural_softc** %6, align 8
  %134 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* @URAL_BULK_WR, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @usbd_transfer_start(i32 %138)
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %91, %83, %34
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @RAL_LOCK_ASSERT(%struct.ural_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ieee80211_isratevalid(i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @ural_sendprot(%struct.ural_softc*, %struct.mbuf*, %struct.ieee80211_node*, i32, i32) #1

declare dso_local %struct.ural_tx_data* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ural_setup_tx_desc(%struct.ural_softc*, i32*, i32, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ural_tx_data*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
