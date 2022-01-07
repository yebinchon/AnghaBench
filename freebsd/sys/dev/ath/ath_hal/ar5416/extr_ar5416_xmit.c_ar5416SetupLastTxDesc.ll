; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416SetupLastTxDesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416SetupLastTxDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar5416_desc = type { i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@AR_MoreAggr = common dso_local global i32 0, align 4
@AR_PadDelim = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416SetupLastTxDesc(%struct.ath_hal* %0, %struct.ath_desc* %1, %struct.ath_desc* %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ath_desc*, align 8
  %6 = alloca %struct.ath_desc*, align 8
  %7 = alloca %struct.ar5416_desc*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %5, align 8
  store %struct.ath_desc* %2, %struct.ath_desc** %6, align 8
  %8 = load %struct.ath_desc*, %struct.ath_desc** %5, align 8
  %9 = call %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc* %8)
  store %struct.ar5416_desc* %9, %struct.ar5416_desc** %7, align 8
  %10 = load i32, i32* @AR_MoreAggr, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %13 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @AR_PadDelim, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %19 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.ath_desc*, %struct.ath_desc** %6, align 8
  %23 = call %struct.TYPE_2__* @AR5416DESC_CONST(%struct.ath_desc* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %27 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ath_desc*, %struct.ath_desc** %6, align 8
  %29 = call %struct.TYPE_2__* @AR5416DESC_CONST(%struct.ath_desc* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %33 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @AH_TRUE, align 4
  ret i32 %34
}

declare dso_local %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc*) #1

declare dso_local %struct.TYPE_2__* @AR5416DESC_CONST(%struct.ath_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
