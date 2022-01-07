; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_calcformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_calcformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32, i32 }

@EAGLE_TXD_ANTENNA = common dso_local global i32 0, align 4
@EAGLE_TXD_EXTCHAN_LO = common dso_local global i32 0, align 4
@EAGLE_TXD_EXTCHAN_HI = common dso_local global i32 0, align 4
@IEEE80211_RATE_MCS = common dso_local global i32 0, align 4
@EAGLE_TXD_FORMAT_HT = common dso_local global i32 0, align 4
@EAGLE_TXD_RATE = common dso_local global i32 0, align 4
@EAGLE_TXD_CHW_40 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI40 = common dso_local global i32 0, align 4
@EAGLE_TXD_GI_SHORT = common dso_local global i32 0, align 4
@EAGLE_TXD_GI_LONG = common dso_local global i32 0, align 4
@EAGLE_TXD_CHW_20 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI20 = common dso_local global i32 0, align 4
@EAGLE_TXD_FORMAT_LEGACY = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@EAGLE_TXD_PREAMBLE_SHORT = common dso_local global i32 0, align 4
@EAGLE_TXD_PREAMBLE_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ieee80211_node*)* @mwl_calcformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_calcformat(i32 %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %6 = load i32, i32* @EAGLE_TXD_ANTENNA, align 4
  %7 = call i32 @SM(i32 3, i32 %6)
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @IEEE80211_IS_CHAN_HT40D(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EAGLE_TXD_EXTCHAN_LO, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EAGLE_TXD_EXTCHAN_HI, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = or i32 %7, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %17
  %25 = load i32, i32* @EAGLE_TXD_FORMAT_HT, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @EAGLE_TXD_RATE, align 4
  %28 = call i32 @SM(i32 %26, i32 %27)
  %29 = or i32 %25, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IEEE80211_IS_CHAN_HT40(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %24
  %38 = load i32, i32* @EAGLE_TXD_CHW_40, align 4
  %39 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_HTCAP_SHORTGI40, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @EAGLE_TXD_GI_SHORT, align 4
  br label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @EAGLE_TXD_GI_LONG, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = or i32 %38, %50
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %71

54:                                               ; preds = %24
  %55 = load i32, i32* @EAGLE_TXD_CHW_20, align 4
  %56 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IEEE80211_HTCAP_SHORTGI20, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @EAGLE_TXD_GI_SHORT, align 4
  br label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @EAGLE_TXD_GI_LONG, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = or i32 %55, %67
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %49
  br label %96

72:                                               ; preds = %17
  %73 = load i32, i32* @EAGLE_TXD_FORMAT_LEGACY, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @mwl_cvtlegacyrate(i32 %74)
  %76 = load i32, i32* @EAGLE_TXD_RATE, align 4
  %77 = call i32 @SM(i32 %75, i32 %76)
  %78 = or i32 %73, %77
  %79 = load i32, i32* @EAGLE_TXD_CHW_20, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IEEE80211_CAPINFO_SHORT_PREAMBLE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* @EAGLE_TXD_PREAMBLE_SHORT, align 4
  br label %91

89:                                               ; preds = %72
  %90 = load i32, i32* @EAGLE_TXD_PREAMBLE_LONG, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = or i32 %80, %92
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %91, %71
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40D(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(i32) #1

declare dso_local i32 @mwl_cvtlegacyrate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
