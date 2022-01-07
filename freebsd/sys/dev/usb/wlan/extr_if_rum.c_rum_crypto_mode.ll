; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_crypto_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_crypto_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32 }

@RT2573_MODE_WEP40 = common dso_local global i32 0, align 4
@RT2573_MODE_WEP104 = common dso_local global i32 0, align 4
@RT2573_MODE_TKIP = common dso_local global i32 0, align 4
@RT2573_MODE_AES_CCMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unknown cipher %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rum_softc*, i32, i32)* @rum_crypto_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_crypto_mode(%struct.rum_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rum_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %22 [
    i32 128, label %9
    i32 129, label %18
    i32 130, label %20
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @RT2573_MODE_WEP40, align 4
  br label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @RT2573_MODE_WEP104, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %4, align 4
  br label %28

18:                                               ; preds = %3
  %19 = load i32, i32* @RT2573_MODE_TKIP, align 4
  store i32 %19, i32* %4, align 4
  br label %28

20:                                               ; preds = %3
  %21 = load i32, i32* @RT2573_MODE_AES_CCMP, align 4
  store i32 %21, i32* %4, align 4
  br label %28

22:                                               ; preds = %3
  %23 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %24 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %22, %20, %18, %16
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
