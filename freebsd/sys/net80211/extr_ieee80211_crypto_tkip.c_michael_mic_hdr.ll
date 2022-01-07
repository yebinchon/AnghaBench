; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto_tkip.c_michael_mic_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto_tkip.c_michael_mic_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32 }
%struct.ieee80211_frame_addr4 = type { i32*, i32, i32, i32, i32 }
%struct.ieee80211_qosframe = type { i32* }

@IEEE80211_FC1_DIR_MASK = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_QOS = common dso_local global i32 0, align 4
@IEEE80211_QOS_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_frame*, i32*)* @michael_mic_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @michael_mic_hdr(%struct.ieee80211_frame* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211_frame*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211_frame_addr4*, align 8
  %6 = alloca %struct.ieee80211_qosframe*, align 8
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %8 = bitcast %struct.ieee80211_frame* %7 to %struct.ieee80211_frame_addr4*
  store %struct.ieee80211_frame_addr4* %8, %struct.ieee80211_frame_addr4** %5, align 8
  %9 = load %struct.ieee80211_frame_addr4*, %struct.ieee80211_frame_addr4** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_frame_addr4, %struct.ieee80211_frame_addr4* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IEEE80211_FC1_DIR_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %72 [
    i32 129, label %16
    i32 128, label %30
    i32 130, label %44
    i32 131, label %58
  ]

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.ieee80211_frame_addr4*, %struct.ieee80211_frame_addr4** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_frame_addr4, %struct.ieee80211_frame_addr4* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @IEEE80211_ADDR_COPY(i32* %17, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load %struct.ieee80211_frame_addr4*, %struct.ieee80211_frame_addr4** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_frame_addr4, %struct.ieee80211_frame_addr4* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IEEE80211_ADDR_COPY(i32* %25, i32 %28)
  br label %72

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.ieee80211_frame_addr4*, %struct.ieee80211_frame_addr4** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_frame_addr4, %struct.ieee80211_frame_addr4* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @IEEE80211_ADDR_COPY(i32* %31, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.ieee80211_frame_addr4*, %struct.ieee80211_frame_addr4** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_frame_addr4, %struct.ieee80211_frame_addr4* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IEEE80211_ADDR_COPY(i32* %39, i32 %42)
  br label %72

44:                                               ; preds = %2
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.ieee80211_frame_addr4*, %struct.ieee80211_frame_addr4** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_frame_addr4, %struct.ieee80211_frame_addr4* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @IEEE80211_ADDR_COPY(i32* %45, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load %struct.ieee80211_frame_addr4*, %struct.ieee80211_frame_addr4** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_frame_addr4, %struct.ieee80211_frame_addr4* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @IEEE80211_ADDR_COPY(i32* %53, i32 %56)
  br label %72

58:                                               ; preds = %2
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.ieee80211_frame_addr4*, %struct.ieee80211_frame_addr4** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_frame_addr4, %struct.ieee80211_frame_addr4* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IEEE80211_ADDR_COPY(i32* %59, i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load %struct.ieee80211_frame_addr4*, %struct.ieee80211_frame_addr4** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_frame_addr4, %struct.ieee80211_frame_addr4* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @IEEE80211_ADDR_COPY(i32* %67, i32 %70)
  br label %72

72:                                               ; preds = %2, %58, %44, %30, %16
  %73 = load %struct.ieee80211_frame_addr4*, %struct.ieee80211_frame_addr4** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_frame_addr4, %struct.ieee80211_frame_addr4* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEEE80211_FC0_SUBTYPE_QOS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %72
  %82 = load %struct.ieee80211_frame_addr4*, %struct.ieee80211_frame_addr4** %5, align 8
  %83 = bitcast %struct.ieee80211_frame_addr4* %82 to %struct.ieee80211_qosframe*
  store %struct.ieee80211_qosframe* %83, %struct.ieee80211_qosframe** %6, align 8
  %84 = load %struct.ieee80211_qosframe*, %struct.ieee80211_qosframe** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211_qosframe, %struct.ieee80211_qosframe* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IEEE80211_QOS_TID, align 4
  %90 = and i32 %88, %89
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 12
  store i32 %90, i32* %92, align 4
  br label %96

93:                                               ; preds = %72
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 12
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %81
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 15
  store i32 0, i32* %98, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 14
  store i32 0, i32* %100, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 13
  store i32 0, i32* %102, align 4
  ret void
}

declare dso_local i32 @IEEE80211_ADDR_COPY(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
