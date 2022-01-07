; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_reset_erp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_reset_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i32, i32, i32, i64, i64 }

@IEEE80211_F_USEPROT = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_C_SHSLOT = common dso_local global i32 0, align 4
@IEEE80211_C_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_F_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_F_USEBARKER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_reset_erp(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %3 = load i32, i32* @IEEE80211_F_USEPROT, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @IEEE80211_IS_CHAN_A(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %1
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @IEEE80211_IS_CHAN_HT(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %19
  %26 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IEEE80211_IS_CHAN_ANYG(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IEEE80211_C_SHSLOT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %37, %31, %25
  %45 = phi i1 [ false, %31 ], [ false, %25 ], [ %43, %37 ]
  br label %46

46:                                               ; preds = %44, %19, %1
  %47 = phi i1 [ true, %19 ], [ true, %1 ], [ %45, %44 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @ieee80211_set_shortslottime(%struct.ieee80211com* %13, i32 %48)
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @IEEE80211_IS_CHAN_A(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %46
  %56 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %57 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %55, %46
  %63 = load i32, i32* @IEEE80211_F_SHPREAMBLE, align 4
  %64 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %65 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @IEEE80211_F_USEBARKER, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %71 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %86

74:                                               ; preds = %55
  %75 = load i32, i32* @IEEE80211_F_SHPREAMBLE, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %78 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @IEEE80211_F_USEBARKER, align 4
  %82 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %83 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %74, %62
  ret void
}

declare dso_local i32 @ieee80211_set_shortslottime(%struct.ieee80211com*, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
