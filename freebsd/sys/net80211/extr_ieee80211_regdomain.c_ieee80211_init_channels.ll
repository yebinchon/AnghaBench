; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_regdomain.c_ieee80211_init_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_regdomain.c_ieee80211_init_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i32, %struct.ieee80211_regdomain, %struct.ieee80211_channel* }
%struct.ieee80211_regdomain = type { i64 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_HTCAP_CHWIDTH40 = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@def_chan_2ghz = common dso_local global i32 0, align 4
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@def_chan_5ghz_band1 = common dso_local global i32 0, align 4
@def_chan_5ghz_band2 = common dso_local global i32 0, align 4
@def_chan_5ghz_band3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_init_channels(%struct.ieee80211com* %0, %struct.ieee80211_regdomain* %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.ieee80211_regdomain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %4, align 8
  store %struct.ieee80211_regdomain* %1, %struct.ieee80211_regdomain** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 3
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  store %struct.ieee80211_channel* %13, %struct.ieee80211_channel** %7, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  store i32* %15, i32** %8, align 8
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @IEEE80211_MODE_11B, align 4
  %28 = call i64 @isset(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %3
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %33 = call i64 @isset(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %38 = call i64 @isset(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %35, %30, %3
  %41 = load i32, i32* @def_chan_2ghz, align 4
  %42 = call i32 @nitems(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %44 = icmp ne %struct.ieee80211_regdomain* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %51, 3
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %55 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* @def_chan_2ghz, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ieee80211_add_channel_list_2ghz(%struct.ieee80211_channel* %54, i32 %55, i32* %56, i32 %57, i32 %58, i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %35
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @IEEE80211_MODE_11A, align 4
  %65 = call i64 @isset(i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %70 = call i64 @isset(i32* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %67, %62
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %74 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* @def_chan_5ghz_band1, align 4
  %77 = load i32, i32* @def_chan_5ghz_band1, align 4
  %78 = call i32 @nitems(i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @ieee80211_add_channel_list_5ghz(%struct.ieee80211_channel* %73, i32 %74, i32* %75, i32 %76, i32 %78, i32* %79, i32 %80)
  %82 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %83 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @def_chan_5ghz_band2, align 4
  %86 = load i32, i32* @def_chan_5ghz_band2, align 4
  %87 = call i32 @nitems(i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @ieee80211_add_channel_list_5ghz(%struct.ieee80211_channel* %82, i32 %83, i32* %84, i32 %85, i32 %87, i32* %88, i32 %89)
  %91 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %92 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* @def_chan_5ghz_band3, align 4
  %95 = load i32, i32* @def_chan_5ghz_band3, align 4
  %96 = call i32 @nitems(i32 %95)
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @ieee80211_add_channel_list_5ghz(%struct.ieee80211_channel* %91, i32 %92, i32* %93, i32 %94, i32 %96, i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %72, %67
  %101 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %102 = icmp ne %struct.ieee80211_regdomain* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %105 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %104, i32 0, i32 2
  %106 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %107 = bitcast %struct.ieee80211_regdomain* %105 to i8*
  %108 = bitcast %struct.ieee80211_regdomain* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 8, i1 false)
  br label %109

109:                                              ; preds = %103, %100
  ret i32 0
}

declare dso_local i64 @isset(i32*, i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @ieee80211_add_channel_list_2ghz(%struct.ieee80211_channel*, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @ieee80211_add_channel_list_5ghz(%struct.ieee80211_channel*, i32, i32*, i32, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
