; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_plcp_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_plcp_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_softc = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"unsupported rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_softc*, i32)* @zyd_plcp_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_plcp_signal(%struct.zyd_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zyd_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.zyd_softc* %0, %struct.zyd_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 12, label %7
    i32 18, label %8
    i32 24, label %9
    i32 36, label %10
    i32 48, label %11
    i32 72, label %12
    i32 96, label %13
    i32 108, label %14
    i32 2, label %15
    i32 4, label %16
    i32 11, label %17
    i32 22, label %18
  ]

7:                                                ; preds = %2
  store i32 11, i32* %3, align 4
  br label %25

8:                                                ; preds = %2
  store i32 15, i32* %3, align 4
  br label %25

9:                                                ; preds = %2
  store i32 10, i32* %3, align 4
  br label %25

10:                                               ; preds = %2
  store i32 14, i32* %3, align 4
  br label %25

11:                                               ; preds = %2
  store i32 9, i32* %3, align 4
  br label %25

12:                                               ; preds = %2
  store i32 13, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  store i32 8, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  store i32 12, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

17:                                               ; preds = %2
  store i32 2, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  store i32 3, i32* %3, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.zyd_softc*, %struct.zyd_softc** %4, align 8
  %21 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
