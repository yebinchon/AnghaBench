; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_ieeerate2hwrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_ieeerate2hwrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_softc = type { i32 }

@BWN_OFDM_RATE_6MB = common dso_local global i32 0, align 4
@BWN_OFDM_RATE_9MB = common dso_local global i32 0, align 4
@BWN_OFDM_RATE_12MB = common dso_local global i32 0, align 4
@BWN_OFDM_RATE_18MB = common dso_local global i32 0, align 4
@BWN_OFDM_RATE_24MB = common dso_local global i32 0, align 4
@BWN_OFDM_RATE_36MB = common dso_local global i32 0, align 4
@BWN_OFDM_RATE_48MB = common dso_local global i32 0, align 4
@BWN_OFDM_RATE_54MB = common dso_local global i32 0, align 4
@BWN_CCK_RATE_1MB = common dso_local global i32 0, align 4
@BWN_CCK_RATE_2MB = common dso_local global i32 0, align 4
@BWN_CCK_RATE_5MB = common dso_local global i32 0, align 4
@BWN_CCK_RATE_11MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unsupported rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_softc*, i32)* @bwn_ieeerate2hwrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_ieeerate2hwrate(%struct.bwn_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.bwn_softc* %0, %struct.bwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %31 [
    i32 12, label %7
    i32 18, label %9
    i32 24, label %11
    i32 36, label %13
    i32 48, label %15
    i32 72, label %17
    i32 96, label %19
    i32 108, label %21
    i32 2, label %23
    i32 4, label %25
    i32 11, label %27
    i32 22, label %29
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @BWN_OFDM_RATE_6MB, align 4
  store i32 %8, i32* %3, align 4
  br label %38

9:                                                ; preds = %2
  %10 = load i32, i32* @BWN_OFDM_RATE_9MB, align 4
  store i32 %10, i32* %3, align 4
  br label %38

11:                                               ; preds = %2
  %12 = load i32, i32* @BWN_OFDM_RATE_12MB, align 4
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load i32, i32* @BWN_OFDM_RATE_18MB, align 4
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load i32, i32* @BWN_OFDM_RATE_24MB, align 4
  store i32 %16, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load i32, i32* @BWN_OFDM_RATE_36MB, align 4
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load i32, i32* @BWN_OFDM_RATE_48MB, align 4
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load i32, i32* @BWN_OFDM_RATE_54MB, align 4
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %2
  %24 = load i32, i32* @BWN_CCK_RATE_1MB, align 4
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load i32, i32* @BWN_CCK_RATE_2MB, align 4
  store i32 %26, i32* %3, align 4
  br label %38

27:                                               ; preds = %2
  %28 = load i32, i32* @BWN_CCK_RATE_5MB, align 4
  store i32 %28, i32* %3, align 4
  br label %38

29:                                               ; preds = %2
  %30 = load i32, i32* @BWN_CCK_RATE_11MB, align 4
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %33 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @BWN_CCK_RATE_1MB, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
