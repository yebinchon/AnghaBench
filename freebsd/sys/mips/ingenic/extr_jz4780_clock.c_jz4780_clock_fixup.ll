; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clock.c_jz4780_clock_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clock.c_jz4780_clock_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_clock_softc = type { i32, i32 }
%struct.clknode = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@JZ4780_CLK_UHC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mpll\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to reparent uhc clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to init uhc clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to lookup uhc clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_clock_softc*)* @jz4780_clock_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_clock_fixup(%struct.jz4780_clock_softc* %0) #0 {
  %2 = alloca %struct.jz4780_clock_softc*, align 8
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32, align 4
  store %struct.jz4780_clock_softc* %0, %struct.jz4780_clock_softc** %2, align 8
  %5 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %2, align 8
  %6 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clkdom_xlock(i32 %7)
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %2, align 8
  %11 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @JZ4780_CLK_UHC, align 4
  %14 = call %struct.clknode* @clknode_find_by_id(i32 %12, i32 %13)
  store %struct.clknode* %14, %struct.clknode** %3, align 8
  %15 = load %struct.clknode*, %struct.clknode** %3, align 8
  %16 = icmp ne %struct.clknode* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load %struct.clknode*, %struct.clknode** %3, align 8
  %19 = call i32 @clknode_set_parent_by_name(%struct.clknode* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %2, align 8
  %24 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %30

27:                                               ; preds = %17
  %28 = load %struct.clknode*, %struct.clknode** %3, align 8
  %29 = call i32 @clknode_set_freq(%struct.clknode* %28, i32 48000000, i32 0, i32 0)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %2, align 8
  %35 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %30
  br label %44

39:                                               ; preds = %1
  %40 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %2, align 8
  %41 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %38
  %45 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %2, align 8
  %46 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clkdom_unlock(i32 %47)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @clkdom_xlock(i32) #1

declare dso_local %struct.clknode* @clknode_find_by_id(i32, i32) #1

declare dso_local i32 @clknode_set_parent_by_name(%struct.clknode*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clknode_set_freq(%struct.clknode*, i32, i32, i32) #1

declare dso_local i32 @clkdom_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
