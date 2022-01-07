; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_tx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i64, i32, %struct.rt2661_tx_ring, %struct.rt2661_tx_ring*, %struct.ieee80211_ratectl_tx_status }
%struct.rt2661_tx_ring = type { i64, i64, i32, %struct.rt2661_tx_data* }
%struct.rt2661_tx_data = type { i32, %struct.ieee80211_node*, %struct.mbuf* }
%struct.ieee80211_node = type { i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_ratectl_tx_status = type { i8*, i8*, i8* }

@IEEE80211_RATECTL_TX_FAIL_LONG = common dso_local global i8* null, align 8
@RT2661_STA_CSR4 = common dso_local global i32 0, align 4
@RT2661_TX_STAT_VALID = common dso_local global i32 0, align 4
@IEEE80211_RATECTL_TX_SUCCESS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"data frame sent successfully after %d retries\0A\00", align 1
@IEEE80211_FIXED_RATE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"sending data frame failed (too much retries)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"sending data frame failed 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"tx done q=%d idx=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2661_softc*)* @rt2661_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2661_tx_intr(%struct.rt2661_softc* %0) #0 {
  %2 = alloca %struct.rt2661_softc*, align 8
  %3 = alloca %struct.ieee80211_ratectl_tx_status*, align 8
  %4 = alloca %struct.rt2661_tx_ring*, align 8
  %5 = alloca %struct.rt2661_tx_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_node*, align 8
  %10 = alloca %struct.mbuf*, align 8
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %2, align 8
  %11 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %12 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %11, i32 0, i32 4
  store %struct.ieee80211_ratectl_tx_status* %12, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %13 = load i8*, i8** @IEEE80211_RATECTL_TX_FAIL_LONG, align 8
  %14 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  br label %16

16:                                               ; preds = %136, %61, %1
  %17 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %18 = load i32, i32* @RT2661_STA_CSR4, align 4
  %19 = call i32 @RAL_READ(%struct.rt2661_softc* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @RT2661_TX_STAT_VALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %141

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @RT2661_TX_QID(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %28, 3
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %32 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %31, i32 0, i32 3
  %33 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %33, i64 %35
  br label %40

37:                                               ; preds = %25
  %38 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %39 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %38, i32 0, i32 2
  br label %40

40:                                               ; preds = %37, %30
  %41 = phi %struct.rt2661_tx_ring* [ %36, %30 ], [ %39, %37 ]
  store %struct.rt2661_tx_ring* %41, %struct.rt2661_tx_ring** %4, align 8
  %42 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %4, align 8
  %43 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %42, i32 0, i32 3
  %44 = load %struct.rt2661_tx_data*, %struct.rt2661_tx_data** %43, align 8
  %45 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %4, align 8
  %46 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.rt2661_tx_data, %struct.rt2661_tx_data* %44, i64 %47
  store %struct.rt2661_tx_data* %48, %struct.rt2661_tx_data** %5, align 8
  %49 = load %struct.rt2661_tx_data*, %struct.rt2661_tx_data** %5, align 8
  %50 = getelementptr inbounds %struct.rt2661_tx_data, %struct.rt2661_tx_data* %49, i32 0, i32 2
  %51 = load %struct.mbuf*, %struct.mbuf** %50, align 8
  store %struct.mbuf* %51, %struct.mbuf** %10, align 8
  %52 = load %struct.rt2661_tx_data*, %struct.rt2661_tx_data** %5, align 8
  %53 = getelementptr inbounds %struct.rt2661_tx_data, %struct.rt2661_tx_data* %52, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %53, align 8
  %54 = load %struct.rt2661_tx_data*, %struct.rt2661_tx_data** %5, align 8
  %55 = getelementptr inbounds %struct.rt2661_tx_data, %struct.rt2661_tx_data* %54, i32 0, i32 1
  %56 = load %struct.ieee80211_node*, %struct.ieee80211_node** %55, align 8
  store %struct.ieee80211_node* %56, %struct.ieee80211_node** %9, align 8
  %57 = load %struct.rt2661_tx_data*, %struct.rt2661_tx_data** %5, align 8
  %58 = getelementptr inbounds %struct.rt2661_tx_data, %struct.rt2661_tx_data* %57, i32 0, i32 1
  store %struct.ieee80211_node* null, %struct.ieee80211_node** %58, align 8
  %59 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %60 = icmp eq %struct.ieee80211_node* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %40
  br label %16

62:                                               ; preds = %40
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @RT2661_TX_RESULT(i32 %63)
  switch i32 %64, label %108 [
    i32 128, label %65
    i32 129, label %88
  ]

65:                                               ; preds = %62
  %66 = load i8*, i8** @IEEE80211_RATECTL_TX_SUCCESS, align 8
  %67 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i8* @RT2661_TX_RETRYCNT(i32 %69)
  %71 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %72 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %74 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %75 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (%struct.rt2661_softc*, i32, i8*, ...) @DPRINTFN(%struct.rt2661_softc* %73, i32 10, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = load %struct.rt2661_tx_data*, %struct.rt2661_tx_data** %5, align 8
  %79 = getelementptr inbounds %struct.rt2661_tx_data, %struct.rt2661_tx_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IEEE80211_FIXED_RATE_NONE, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %65
  %84 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %85 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %86 = call i32 @ieee80211_ratectl_tx_complete(%struct.ieee80211_node* %84, %struct.ieee80211_ratectl_tx_status* %85)
  br label %87

87:                                               ; preds = %83, %65
  store i32 0, i32* %7, align 4
  br label %114

88:                                               ; preds = %62
  %89 = load i8*, i8** @IEEE80211_RATECTL_TX_FAIL_LONG, align 8
  %90 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %91 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i8* @RT2661_TX_RETRYCNT(i32 %92)
  %94 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %95 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %97 = call i32 (%struct.rt2661_softc*, i32, i8*, ...) @DPRINTFN(%struct.rt2661_softc* %96, i32 9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.rt2661_tx_data*, %struct.rt2661_tx_data** %5, align 8
  %99 = getelementptr inbounds %struct.rt2661_tx_data, %struct.rt2661_tx_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IEEE80211_FIXED_RATE_NONE, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %88
  %104 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %105 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %106 = call i32 @ieee80211_ratectl_tx_complete(%struct.ieee80211_node* %104, %struct.ieee80211_ratectl_tx_status* %105)
  br label %107

107:                                              ; preds = %103, %88
  store i32 1, i32* %7, align 4
  br label %114

108:                                              ; preds = %62
  %109 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %110 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  store i32 1, i32* %7, align 4
  br label %114

114:                                              ; preds = %108, %107, %87
  %115 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %4, align 8
  %118 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (%struct.rt2661_softc*, i32, i8*, ...) @DPRINTFN(%struct.rt2661_softc* %115, i32 15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %116, i64 %119)
  %121 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %4, align 8
  %122 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %4, align 8
  %126 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %4, align 8
  %130 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp uge i64 %128, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %114
  %134 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %4, align 8
  %135 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %133, %114
  %137 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %138 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @ieee80211_tx_complete(%struct.ieee80211_node* %137, %struct.mbuf* %138, i32 %139)
  br label %16

141:                                              ; preds = %24
  %142 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %143 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %145 = call i32 @rt2661_start(%struct.rt2661_softc* %144)
  ret void
}

declare dso_local i32 @RAL_READ(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @RT2661_TX_QID(i32) #1

declare dso_local i32 @RT2661_TX_RESULT(i32) #1

declare dso_local i8* @RT2661_TX_RETRYCNT(i32) #1

declare dso_local i32 @DPRINTFN(%struct.rt2661_softc*, i32, i8*, ...) #1

declare dso_local i32 @ieee80211_ratectl_tx_complete(%struct.ieee80211_node*, %struct.ieee80211_ratectl_tx_status*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @ieee80211_tx_complete(%struct.ieee80211_node*, %struct.mbuf*, i32) #1

declare dso_local i32 @rt2661_start(%struct.rt2661_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
