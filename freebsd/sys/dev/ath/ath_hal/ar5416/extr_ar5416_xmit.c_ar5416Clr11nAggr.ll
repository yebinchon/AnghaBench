; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416Clr11nAggr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416Clr11nAggr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar5416_desc = type { i32, i32 }

@AR_IsAggr = common dso_local global i32 0, align 4
@AR_MoreAggr = common dso_local global i32 0, align 4
@AR_PadDelim = common dso_local global i32 0, align 4
@AR_AggrLen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416Clr11nAggr(%struct.ath_hal* %0, %struct.ath_desc* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ath_desc*, align 8
  %5 = alloca %struct.ar5416_desc*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %4, align 8
  %6 = load %struct.ath_desc*, %struct.ath_desc** %4, align 8
  %7 = call %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc* %6)
  store %struct.ar5416_desc* %7, %struct.ar5416_desc** %5, align 8
  %8 = load i32, i32* @AR_IsAggr, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @AR_MoreAggr, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load %struct.ar5416_desc*, %struct.ar5416_desc** %5, align 8
  %14 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @AR_PadDelim, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.ar5416_desc*, %struct.ar5416_desc** %5, align 8
  %20 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @AR_AggrLen, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.ar5416_desc*, %struct.ar5416_desc** %5, align 8
  %26 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  ret void
}

declare dso_local %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
