; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_computedur_ht.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_computedur_ht.c"
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
define dso_local i32 @ath_computedur_ht(i32 %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
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
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %5
  %35 = load i32*, i32** @ht40_bps, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @HT_RC_2_MCS(i32 %36)
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  br label %46

40:                                               ; preds = %5
  %41 = load i32*, i32** @ht20_bps, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @HT_RC_2_MCS(i32 %42)
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* @OFDM_PLCP_BITS, align 4
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 %48, 3
  %50 = add nsw i32 %47, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @howmany(i32 %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i32, i32* %13, align 4
  %58 = mul nsw i32 %57, 18
  %59 = add nsw i32 %58, 4
  %60 = sdiv i32 %59, 5
  store i32 %60, i32* %14, align 4
  br label %64

61:                                               ; preds = %46
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 %62, 4
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @HT_L_STF, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* @HT_L_LTF, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* @HT_L_SIG, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* @HT_SIG, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* @HT_STF, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @HT_LTF(i32 %76)
  %78 = add nsw i32 %75, %77
  ret i32 %78
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @HT_RC_2_MCS(i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @HT_LTF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
