; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

@IFM_IEEE80211 = common dso_local global i32 0, align 4
@IFM_IEEE80211_ADHOC = common dso_local global i32 0, align 4
@IFM_IEEE80211_HOSTAP = common dso_local global i32 0, align 4
@IFM_IEEE80211_MONITOR = common dso_local global i32 0, align 4
@IFM_FLAG0 = common dso_local global i32 0, align 4
@IFM_IEEE80211_WDS = common dso_local global i32 0, align 4
@IFM_IEEE80211_MBSS = common dso_local global i32 0, align 4
@IFM_IEEE80211_11NA = common dso_local global i32 0, align 4
@IFM_IEEE80211_11NG = common dso_local global i32 0, align 4
@IFM_IEEE80211_11A = common dso_local global i32 0, align 4
@IFM_IEEE80211_11B = common dso_local global i32 0, align 4
@IFM_IEEE80211_11G = common dso_local global i32 0, align 4
@IFM_IEEE80211_FH = common dso_local global i32 0, align 4
@IFM_IEEE80211_TURBO = common dso_local global i32 0, align 4
@IFM_IEEE80211_HT20 = common dso_local global i32 0, align 4
@IFM_IEEE80211_HT40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ieee80211_channel*)* @media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @media_status(i32 %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load i32, i32* @IFM_IEEE80211, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %35 [
    i32 129, label %8
    i32 132, label %9
    i32 133, label %13
    i32 130, label %17
    i32 134, label %21
    i32 128, label %27
    i32 131, label %31
  ]

8:                                                ; preds = %2
  br label %35

9:                                                ; preds = %2
  %10 = load i32, i32* @IFM_IEEE80211_ADHOC, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load i32, i32* @IFM_IEEE80211_HOSTAP, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load i32, i32* @IFM_IEEE80211_MONITOR, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load i32, i32* @IFM_IEEE80211_ADHOC, align 4
  %23 = load i32, i32* @IFM_FLAG0, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load i32, i32* @IFM_IEEE80211_WDS, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @IFM_IEEE80211_MBSS, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %2, %31, %27, %21, %17, %13, %9, %8
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %37 = call i64 @IEEE80211_IS_CHAN_HTA(%struct.ieee80211_channel* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @IFM_IEEE80211_11NA, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %88

43:                                               ; preds = %35
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %45 = call i64 @IEEE80211_IS_CHAN_HTG(%struct.ieee80211_channel* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @IFM_IEEE80211_11NG, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %87

51:                                               ; preds = %43
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %53 = call i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @IFM_IEEE80211_11A, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %86

59:                                               ; preds = %51
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %61 = call i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @IFM_IEEE80211_11B, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %85

67:                                               ; preds = %59
  %68 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %69 = call i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @IFM_IEEE80211_11G, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %84

75:                                               ; preds = %67
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %77 = call i64 @IEEE80211_IS_CHAN_FHSS(%struct.ieee80211_channel* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @IFM_IEEE80211_FH, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %71
  br label %85

85:                                               ; preds = %84, %63
  br label %86

86:                                               ; preds = %85, %55
  br label %87

87:                                               ; preds = %86, %47
  br label %88

88:                                               ; preds = %87, %39
  %89 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %90 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* @IFM_IEEE80211_TURBO, align 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @IEEE80211_IS_CHAN_HTA(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HTG(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_FHSS(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
