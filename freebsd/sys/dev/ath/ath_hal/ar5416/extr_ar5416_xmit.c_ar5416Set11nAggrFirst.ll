; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416Set11nAggrFirst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416Set11nAggrFirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar5416_desc = type { i32, i32, i32, i32, i32 }

@AR_IsAggr = common dso_local global i32 0, align 4
@AR_MoreAggr = common dso_local global i32 0, align 4
@AR_AggrLen = common dso_local global i32 0, align 4
@AR_PadDelim = common dso_local global i32 0, align 4
@AR_XmitRate0 = common dso_local global i32 0, align 4
@AR_CTSEnable = common dso_local global i32 0, align 4
@AR_RTSEnable = common dso_local global i32 0, align 4
@baDurationDelta = common dso_local global i32* null, align 8
@AR_BurstDur = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416Set11nAggrFirst(%struct.ath_hal* %0, %struct.ath_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca %struct.ath_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ar5416_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ath_desc*, %struct.ath_desc** %6, align 8
  %14 = call %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc* %13)
  store %struct.ar5416_desc* %14, %struct.ar5416_desc** %9, align 8
  %15 = load i32, i32* @AR_IsAggr, align 4
  %16 = load i32, i32* @AR_MoreAggr, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %19 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @AR_AggrLen, align 4
  %23 = load i32, i32* @AR_PadDelim, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %27 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AR_AggrLen, align 4
  %32 = call i32 @SM(i32 %30, i32 %31)
  %33 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %34 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @AR_PadDelim, align 4
  %39 = call i32 @SM(i32 %37, i32 %38)
  %40 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %41 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %45 = call i32 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %89, label %47

47:                                               ; preds = %4
  %48 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %49 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AR_XmitRate0, align 4
  %52 = call i32 @MS(i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %54 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AR_CTSEnable, align 4
  %57 = load i32, i32* @AR_RTSEnable, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %47
  %63 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %64 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AR_IsAggr, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %62
  %70 = load i32*, i32** @baDurationDelta, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i64 @HT_RC_2_MCS(i32 %71)
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @AR_BurstDur, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %78 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @AR_BurstDur, align 4
  %83 = call i32 @SM(i32 %81, i32 %82)
  %84 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %85 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %69, %62, %47
  br label %89

89:                                               ; preds = %88, %4
  ret void
}

declare dso_local %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc*) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i64 @HT_RC_2_MCS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
