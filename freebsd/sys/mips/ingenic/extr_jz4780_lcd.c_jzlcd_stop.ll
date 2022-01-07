; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jzlcd_softc = type { i32 }

@LCDCTRL = common dso_local global i32 0, align 4
@LCDCTRL_ENA = common dso_local global i32 0, align 4
@LCDCTRL_DIS = common dso_local global i32 0, align 4
@LCDSTATE = common dso_local global i32 0, align 4
@LCDSTATE_LDD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jzlcd_softc*)* @jzlcd_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jzlcd_stop(%struct.jzlcd_softc* %0) #0 {
  %2 = alloca %struct.jzlcd_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.jzlcd_softc* %0, %struct.jzlcd_softc** %2, align 8
  %4 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %2, align 8
  %5 = load i32, i32* @LCDCTRL, align 4
  %6 = call i32 @LCD_READ(%struct.jzlcd_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @LCDCTRL_ENA, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load i32, i32* @LCDCTRL_DIS, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %2, align 8
  %16 = load i32, i32* @LCDCTRL, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %26, %11
  %20 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %2, align 8
  %21 = load i32, i32* @LCDSTATE, align 4
  %22 = call i32 @LCD_READ(%struct.jzlcd_softc* %20, i32 %21)
  %23 = load i32, i32* @LCDSTATE_LDD, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @DELAY(i32 100)
  br label %19

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %2, align 8
  %31 = load i32, i32* @LCDSTATE, align 4
  %32 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %2, align 8
  %33 = load i32, i32* @LCDSTATE, align 4
  %34 = call i32 @LCD_READ(%struct.jzlcd_softc* %32, i32 %33)
  %35 = load i32, i32* @LCDSTATE_LDD, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %30, i32 %31, i32 %37)
  ret void
}

declare dso_local i32 @LCD_READ(%struct.jzlcd_softc*, i32) #1

declare dso_local i32 @LCD_WRITE(%struct.jzlcd_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
