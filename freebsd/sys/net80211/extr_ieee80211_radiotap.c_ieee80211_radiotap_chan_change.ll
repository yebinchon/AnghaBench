; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_radiotap.c_ieee80211_radiotap_chan_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_radiotap.c_ieee80211_radiotap_chan_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i32*, %struct.ieee80211_radiotap_header*, i32*, %struct.ieee80211_radiotap_header* }
%struct.ieee80211_radiotap_header = type { i32 }

@IEEE80211_RADIOTAP_XCHANNEL = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_radiotap_chan_change(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.ieee80211_radiotap_header*, align 8
  %4 = alloca %struct.ieee80211_radiotap_header*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %48

9:                                                ; preds = %1
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 4
  %12 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %11, align 8
  store %struct.ieee80211_radiotap_header* %12, %struct.ieee80211_radiotap_header** %3, align 8
  %13 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IEEE80211_RADIOTAP_XCHANNEL, align 4
  %17 = shl i32 1, %16
  %18 = call i32 @htole32(i32 %17)
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %9
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %23 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @set_xchannel(i32* %24, i32 %27)
  br label %47

29:                                               ; preds = %9
  %30 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE80211_RADIOTAP_CHANNEL, align 4
  %34 = shl i32 1, %33
  %35 = call i32 @htole32(i32 %34)
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %40 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %43 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @set_channel(i32* %41, i32 %44)
  br label %46

46:                                               ; preds = %38, %29
  br label %47

47:                                               ; preds = %46, %21
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %50 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %92

53:                                               ; preds = %48
  %54 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %55 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %54, i32 0, i32 2
  %56 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %55, align 8
  store %struct.ieee80211_radiotap_header* %56, %struct.ieee80211_radiotap_header** %4, align 8
  %57 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IEEE80211_RADIOTAP_XCHANNEL, align 4
  %61 = shl i32 1, %60
  %62 = call i32 @htole32(i32 %61)
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %53
  %66 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %67 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %70 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @set_xchannel(i32* %68, i32 %71)
  br label %91

73:                                               ; preds = %53
  %74 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %4, align 8
  %75 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IEEE80211_RADIOTAP_CHANNEL, align 4
  %78 = shl i32 1, %77
  %79 = call i32 @htole32(i32 %78)
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %84 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %87 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @set_channel(i32* %85, i32 %88)
  br label %90

90:                                               ; preds = %82, %73
  br label %91

91:                                               ; preds = %90, %65
  br label %92

92:                                               ; preds = %91, %48
  ret void
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @set_xchannel(i32*, i32) #1

declare dso_local i32 @set_channel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
