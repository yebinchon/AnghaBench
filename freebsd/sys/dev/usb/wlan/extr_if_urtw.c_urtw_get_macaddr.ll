; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_get_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_get_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32* }

@URTW_EPROM_MACADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*)* @urtw_get_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_get_macaddr(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %6 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %7 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %6, i32 0, i32 0
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %9 = load i64, i64* @URTW_EPROM_MACADDR, align 8
  %10 = call i64 @urtw_eprom_read32(%struct.urtw_softc* %8, i64 %9, i32* %4)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %70

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 255
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 65280
  %23 = ashr i32 %22, 8
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %29 = load i64, i64* @URTW_EPROM_MACADDR, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i64 @urtw_eprom_read32(%struct.urtw_softc* %28, i64 %30, i32* %4)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  br label %70

35:                                               ; preds = %14
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 255
  %38 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 65280
  %44 = ashr i32 %43, 8
  %45 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 %44, i32* %48, align 4
  %49 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %50 = load i64, i64* @URTW_EPROM_MACADDR, align 8
  %51 = add nsw i64 %50, 2
  %52 = call i64 @urtw_eprom_read32(%struct.urtw_softc* %49, i64 %51, i32* %4)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %35
  br label %70

56:                                               ; preds = %35
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 255
  %59 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, 65280
  %65 = ashr i32 %64, 8
  %66 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %56, %55, %34, %13
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local i64 @urtw_eprom_read32(%struct.urtw_softc*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
