; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_otp_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_otp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.muge_softc = type { i32 }

@OTP_INDICATOR_OFFSET = common dso_local global i32 0, align 4
@OTP_INDICATOR_1 = common dso_local global i64 0, align 8
@OTP_INDICATOR_2 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.muge_softc*, i32, i64*, i32)* @lan78xx_otp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_otp_read(%struct.muge_softc* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.muge_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.muge_softc* %0, %struct.muge_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %12 = load i32, i32* @OTP_INDICATOR_OFFSET, align 4
  %13 = call i32 @lan78xx_otp_read_raw(%struct.muge_softc* %11, i32 %12, i64* %9, i32 1)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @OTP_INDICATOR_1, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %32

21:                                               ; preds = %16
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @OTP_INDICATOR_2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 256
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %20
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i64*, i64** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @lan78xx_otp_read_raw(%struct.muge_softc* %36, i32 %37, i64* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %35, %32
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local i32 @lan78xx_otp_read_raw(%struct.muge_softc*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
