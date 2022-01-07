; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_vht.c_ieee80211_vht_announce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_vht.c_ieee80211_vht_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"[VHT] Channel Widths: 20MHz, 40MHz, 80MHz\00", align 1
@IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" 80+80MHz\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" 160MHz\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"[VHT] Features: %b\0A\00", align 1
@IEEE80211_VHTCAP_BITS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"[VHT] NSS %d: TX MCS 0..%d, RX MCS 0..%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_vht_announce(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %7 = call i32 @IEEE80211_CONF_VHT(%struct.ieee80211com* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %76

10:                                               ; preds = %1
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %12 = call i32 (%struct.ieee80211com*, i8*, ...) @ic_printf(%struct.ieee80211com* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK, align 4
  %17 = call i32 @MS(i32 %15, i32 %16)
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %10
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %23 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK, align 4
  %26 = call i32 @MS(i32 %24, i32 %25)
  %27 = icmp sge i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  %31 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %33 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %34 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IEEE80211_VHTCAP_BITS, align 4
  %37 = call i32 (%struct.ieee80211com*, i8*, ...) @ic_printf(%struct.ieee80211com* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %35, i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %73, %30
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 7
  br i1 %40, label %41, label %76

41:                                               ; preds = %38
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %43 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %3, align 4
  %47 = mul nsw i32 2, %46
  %48 = ashr i32 %45, %47
  %49 = and i32 %48, 3
  store i32 %49, i32* %4, align 4
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %3, align 4
  %55 = mul nsw i32 2, %54
  %56 = ashr i32 %53, %55
  %57 = and i32 %56, 3
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %64

60:                                               ; preds = %41
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %73

64:                                               ; preds = %60, %41
  %65 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @vht_mcs_to_num(i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @vht_mcs_to_num(i32 %70)
  %72 = call i32 (%struct.ieee80211com*, i8*, ...) @ic_printf(%struct.ieee80211com* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %67, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %64, %63
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %38

76:                                               ; preds = %9, %38
  ret void
}

declare dso_local i32 @IEEE80211_CONF_VHT(%struct.ieee80211com*) #1

declare dso_local i32 @ic_printf(%struct.ieee80211com*, i8*, ...) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @vht_mcs_to_num(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
