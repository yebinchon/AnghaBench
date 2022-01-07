; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_ohci.c_jz4780_ohci_clk_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_ohci.c_jz4780_ohci_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_ohci_softc = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"unable to lookup device clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to enable device clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"unable to set device clock to 48 kHZ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_ohci_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_ohci_clk_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_ohci_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.jz4780_ohci_softc* @device_get_softc(i32 %6)
  store %struct.jz4780_ohci_softc* %7, %struct.jz4780_ohci_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %9, i32 0, i32 0
  %11 = call i32 @clk_get_by_ofw_index(i32 %8, i32 0, i32 0, i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %41

18:                                               ; preds = %1
  %19 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %20 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_enable(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %41

29:                                               ; preds = %18
  %30 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %31 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_set_freq(i32 %32, i32 48000000, i32 0)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %36, %25, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.jz4780_ohci_softc* @device_get_softc(i32) #1

declare dso_local i32 @clk_get_by_ofw_index(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
