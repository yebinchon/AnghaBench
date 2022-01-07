; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_media2mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_media2mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmedia_entry = type { i32 }

@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8
@IEEE80211_MODE_FH = common dso_local global i64 0, align 8
@IEEE80211_MODE_11NA = common dso_local global i64 0, align 8
@IEEE80211_MODE_11NG = common dso_local global i64 0, align 8
@IEEE80211_MODE_AUTO = common dso_local global i64 0, align 8
@IFM_IEEE80211_TURBO = common dso_local global i32 0, align 4
@IEEE80211_F_TURBOP = common dso_local global i32 0, align 4
@IEEE80211_MODE_TURBO_A = common dso_local global i64 0, align 8
@IEEE80211_MODE_STURBO_A = common dso_local global i64 0, align 8
@IEEE80211_MODE_TURBO_G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifmedia_entry*, i32, i64*)* @media2mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @media2mode(%struct.ifmedia_entry* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifmedia_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store %struct.ifmedia_entry* %0, %struct.ifmedia_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %8 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %5, align 8
  %9 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @IFM_MODE(i32 %10)
  switch i32 %11, label %33 [
    i32 133, label %12
    i32 132, label %15
    i32 131, label %18
    i32 128, label %21
    i32 130, label %24
    i32 129, label %27
    i32 134, label %30
  ]

12:                                               ; preds = %3
  %13 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %14 = load i64*, i64** %7, align 8
  store i64 %13, i64* %14, align 8
  br label %34

15:                                               ; preds = %3
  %16 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %17 = load i64*, i64** %7, align 8
  store i64 %16, i64* %17, align 8
  br label %34

18:                                               ; preds = %3
  %19 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %20 = load i64*, i64** %7, align 8
  store i64 %19, i64* %20, align 8
  br label %34

21:                                               ; preds = %3
  %22 = load i64, i64* @IEEE80211_MODE_FH, align 8
  %23 = load i64*, i64** %7, align 8
  store i64 %22, i64* %23, align 8
  br label %34

24:                                               ; preds = %3
  %25 = load i64, i64* @IEEE80211_MODE_11NA, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  br label %34

27:                                               ; preds = %3
  %28 = load i64, i64* @IEEE80211_MODE_11NG, align 8
  %29 = load i64*, i64** %7, align 8
  store i64 %28, i64* %29, align 8
  br label %34

30:                                               ; preds = %3
  %31 = load i64, i64* @IEEE80211_MODE_AUTO, align 8
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  br label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

34:                                               ; preds = %30, %27, %24, %21, %18, %15, %12
  %35 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %5, align 8
  %36 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFM_IEEE80211_TURBO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %34
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @IEEE80211_F_TURBOP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i64, i64* @IEEE80211_MODE_TURBO_A, align 8
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  br label %57

54:                                               ; preds = %46
  %55 = load i64, i64* @IEEE80211_MODE_STURBO_A, align 8
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  br label %68

58:                                               ; preds = %41
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i64, i64* @IEEE80211_MODE_TURBO_G, align 8
  %65 = load i64*, i64** %7, align 8
  store i64 %64, i64* %65, align 8
  br label %67

66:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %70

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %34
  store i32 1, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %66, %33
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @IFM_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
