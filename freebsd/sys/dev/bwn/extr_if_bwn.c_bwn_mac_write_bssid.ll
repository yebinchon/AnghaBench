; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_mac_write_bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_mac_write_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@BWN_MACFILTER_BSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_mac_write_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_mac_write_bssid(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 0
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  store %struct.bwn_softc* %10, %struct.bwn_softc** %3, align 8
  %11 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %12 = mul nsw i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %17 = load i32, i32* @BWN_MACFILTER_BSSID, align 4
  %18 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %19 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bwn_mac_setfilter(%struct.bwn_mac* %16, i32 %17, i32 %20)
  %22 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %27 = call i32 @memcpy(i64* %15, i32 %25, i32 %26)
  %28 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %15, i64 %29
  %31 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %35 = call i32 @memcpy(i64* %30, i32 %33, i32 %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %79, %1
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @N(i64* %15)
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 0
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %15, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %15, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = shl i32 %52, 8
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %15, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %61, 16
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %15, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = shl i32 %70, 24
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 32, %75
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @bwn_ram_write(%struct.bwn_mac* %74, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %40
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, 4
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %5, align 4
  br label %36

84:                                               ; preds = %36
  %85 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %85)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bwn_mac_setfilter(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @memcpy(i64*, i32, i32) #2

declare dso_local i32 @N(i64*) #2

declare dso_local i32 @bwn_ram_write(%struct.bwn_mac*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
