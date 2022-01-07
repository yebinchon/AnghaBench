; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_pre_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_pre_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i32 }
%struct.termios = type { i32, i32 }
%struct.uchcom_divider = type { i32 }

@CSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucom_softc*, %struct.termios*)* @uchcom_pre_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uchcom_pre_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca %struct.termios*, align 8
  %6 = alloca %struct.uchcom_divider, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %4, align 8
  store %struct.termios* %1, %struct.termios** %5, align 8
  %7 = load %struct.termios*, %struct.termios** %5, align 8
  %8 = getelementptr inbounds %struct.termios, %struct.termios* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CSIZE, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %13 [
    i32 128, label %12
  ]

12:                                               ; preds = %2
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EIO, align 4
  store i32 %14, i32* %3, align 4
  br label %42

15:                                               ; preds = %12
  %16 = load %struct.termios*, %struct.termios** %5, align 8
  %17 = getelementptr inbounds %struct.termios, %struct.termios* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CSTOPB, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @EIO, align 4
  store i32 %23, i32* %3, align 4
  br label %42

24:                                               ; preds = %15
  %25 = load %struct.termios*, %struct.termios** %5, align 8
  %26 = getelementptr inbounds %struct.termios, %struct.termios* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PARENB, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @EIO, align 4
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %24
  %34 = load %struct.termios*, %struct.termios** %5, align 8
  %35 = getelementptr inbounds %struct.termios, %struct.termios* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @uchcom_calc_divider_settings(%struct.uchcom_divider* %6, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EIO, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %31, %22, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @uchcom_calc_divider_settings(%struct.uchcom_divider*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
