; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_cfg_set_break.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_cfg_set_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uchcom_softc* }
%struct.uchcom_softc = type { i32 }

@UCHCOM_REG_BREAK1 = common dso_local global i32 0, align 4
@UCHCOM_REG_LCR1 = common dso_local global i32 0, align 4
@UCHCOM_BRK_MASK = common dso_local global i64 0, align 8
@UCHCOM_LCR1_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @uchcom_cfg_set_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uchcom_cfg_set_break(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uchcom_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %8, i32 0, i32 0
  %10 = load %struct.uchcom_softc*, %struct.uchcom_softc** %9, align 8
  store %struct.uchcom_softc* %10, %struct.uchcom_softc** %5, align 8
  %11 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %12 = load i32, i32* @UCHCOM_REG_BREAK1, align 4
  %13 = load i32, i32* @UCHCOM_REG_LCR1, align 4
  %14 = call i32 @uchcom_read_reg(%struct.uchcom_softc* %11, i32 %12, i64* %6, i32 %13, i64* %7)
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i64, i64* @UCHCOM_BRK_MASK, align 8
  %19 = xor i64 %18, -1
  %20 = load i64, i64* %6, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* @UCHCOM_LCR1_TX, align 8
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %7, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %7, align 8
  br label %33

26:                                               ; preds = %2
  %27 = load i64, i64* @UCHCOM_BRK_MASK, align 8
  %28 = load i64, i64* %6, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* @UCHCOM_LCR1_TX, align 8
  %31 = load i64, i64* %7, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %26, %17
  %34 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %35 = load i32, i32* @UCHCOM_REG_BREAK1, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @UCHCOM_REG_LCR1, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @uchcom_write_reg(%struct.uchcom_softc* %34, i32 %35, i64 %36, i32 %37, i64 %38)
  ret void
}

declare dso_local i32 @uchcom_read_reg(%struct.uchcom_softc*, i32, i64*, i32, i64*) #1

declare dso_local i32 @uchcom_write_reg(%struct.uchcom_softc*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
