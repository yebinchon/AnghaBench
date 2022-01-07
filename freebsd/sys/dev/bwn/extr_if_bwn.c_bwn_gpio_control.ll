; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_gpio_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_gpio_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32, i32 }

@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_TRISTATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"error configuring %s pin flags: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwn_gpio_control(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwn_softc*, align 8
  %7 = alloca [32 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 0
  %13 = load %struct.bwn_softc*, %struct.bwn_softc** %12, align 8
  store %struct.bwn_softc* %13, %struct.bwn_softc** %6, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %37, %2
  %15 = load i64, i64* %9, align 8
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %17 = call i64 @nitems(i32* %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = load i64, i64* %9, align 8
  %21 = trunc i64 %20 to i32
  %22 = shl i32 1, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %29 = load i32, i32* @GPIO_PIN_TRISTATE, align 4
  %30 = or i32 %28, %29
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 %31
  store i32 %30, i32* %32, align 4
  br label %36

33:                                               ; preds = %19
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 %34
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %27
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %9, align 8
  br label %14

40:                                               ; preds = %14
  %41 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %42 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %45 = call i64 @nitems(i32* %44)
  %46 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %47 = call i32 @GPIO_PIN_CONFIG_32(i32 %43, i32 0, i64 %45, i32* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %52 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %55 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @device_get_nameunit(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %50
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @nitems(i32*) #1

declare dso_local i32 @GPIO_PIN_CONFIG_32(i32, i32, i64, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
