; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_set_dtr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_set_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.ufoma_softc* }
%struct.ufoma_softc = type { i32, i64 }

@UCDC_LINE_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @ufoma_cfg_set_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufoma_cfg_set_dtr(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ufoma_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %6, i32 0, i32 0
  %8 = load %struct.ufoma_softc*, %struct.ufoma_softc** %7, align 8
  store %struct.ufoma_softc* %8, %struct.ufoma_softc** %5, align 8
  %9 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %10 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %33

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* @UCDC_LINE_DTR, align 4
  %19 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %30

23:                                               ; preds = %14
  %24 = load i32, i32* @UCDC_LINE_DTR, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %27 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %23, %17
  %31 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %32 = call i32 @ufoma_cfg_set_line_state(%struct.ufoma_softc* %31)
  br label %33

33:                                               ; preds = %30, %13
  ret void
}

declare dso_local i32 @ufoma_cfg_set_line_state(%struct.ufoma_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
