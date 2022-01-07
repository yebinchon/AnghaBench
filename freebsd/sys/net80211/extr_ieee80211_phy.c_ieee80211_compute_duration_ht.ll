; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_phy.c_ieee80211_compute_duration_ht.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_phy.c_ieee80211_compute_duration_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_RATE_MCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"not mcs %d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bad mcs 0x%x\00", align 1
@ht40_bps = common dso_local global i32* null, align 8
@ht20_bps = common dso_local global i32* null, align 8
@OFDM_PLCP_BITS = common dso_local global i32 0, align 4
@HT_L_STF = common dso_local global i32 0, align 4
@HT_L_LTF = common dso_local global i32 0, align 4
@HT_L_SIG = common dso_local global i32 0, align 4
@HT_SIG = common dso_local global i32 0, align 4
@HT_STF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_compute_duration_ht(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %17, i8* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp slt i32 %25, 31
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %27, i8* %30)
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = load i32*, i32** @ht40_bps, align 8
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 31
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  br label %48

41:                                               ; preds = %5
  %42 = load i32*, i32** @ht20_bps, align 8
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 31
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %41, %34
  %49 = load i32, i32* @OFDM_PLCP_BITS, align 4
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 %50, 3
  %52 = add nsw i32 %49, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @howmany(i32 %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load i32, i32* %13, align 4
  %60 = mul nsw i32 %59, 18
  %61 = add nsw i32 %60, 4
  %62 = sdiv i32 %61, 5
  store i32 %62, i32* %14, align 4
  br label %66

63:                                               ; preds = %48
  %64 = load i32, i32* %13, align 4
  %65 = mul nsw i32 %64, 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @HT_L_STF, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* @HT_L_LTF, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* @HT_L_SIG, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* @HT_SIG, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* @HT_STF, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @HT_LTF(i32 %78)
  %80 = add nsw i32 %77, %79
  ret i32 %80
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @HT_LTF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
