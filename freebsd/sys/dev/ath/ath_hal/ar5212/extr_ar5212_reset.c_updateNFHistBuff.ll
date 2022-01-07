; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_updateNFHistBuff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_updateNFHistBuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5212NfCalHist = type { i64, i32* }

@AR512_NF_CAL_HIST_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar5212NfCalHist*, i32)* @updateNFHistBuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateNFHistBuff(%struct.ar5212NfCalHist* %0, i32 %1) #0 {
  %3 = alloca %struct.ar5212NfCalHist*, align 8
  %4 = alloca i32, align 4
  store %struct.ar5212NfCalHist* %0, %struct.ar5212NfCalHist** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ar5212NfCalHist*, %struct.ar5212NfCalHist** %3, align 8
  %7 = getelementptr inbounds %struct.ar5212NfCalHist, %struct.ar5212NfCalHist* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.ar5212NfCalHist*, %struct.ar5212NfCalHist** %3, align 8
  %10 = getelementptr inbounds %struct.ar5212NfCalHist, %struct.ar5212NfCalHist* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  store i32 %5, i32* %12, align 4
  %13 = load %struct.ar5212NfCalHist*, %struct.ar5212NfCalHist** %3, align 8
  %14 = getelementptr inbounds %struct.ar5212NfCalHist, %struct.ar5212NfCalHist* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* @AR512_NF_CAL_HIST_MAX, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.ar5212NfCalHist*, %struct.ar5212NfCalHist** %3, align 8
  %21 = getelementptr inbounds %struct.ar5212NfCalHist, %struct.ar5212NfCalHist* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
