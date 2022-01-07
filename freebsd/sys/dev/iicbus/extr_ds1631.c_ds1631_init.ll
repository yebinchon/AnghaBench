; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1631.c_ds1631_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1631.c_ds1631_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1631_softc = type { i32 }

@DS1631_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ds1631 read config failed: %x\0A\00", align 1
@DS1631_CONTROL_1SHOT = common dso_local global i32 0, align 4
@DS1631_STOP = common dso_local global i32 0, align 4
@DS1631_CONTROL_10BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ds1631 write config failed: %x\0A\00", align 1
@DS1631_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"ds1631 write start failed: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ds1631_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1631_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ds1631_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ds1631_softc* @device_get_softc(i32 %9)
  store %struct.ds1631_softc* %10, %struct.ds1631_softc** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DS1631_CONTROL, align 4
  %14 = call i32 @ds1631_read_1(i32 %11, i32 %12, i32 %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 -1, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DS1631_CONTROL_1SHOT, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @DS1631_STOP, align 4
  %31 = call i32 @ds1631_write(i32 %28, i32 %29, i32 %30, i32* %6, i32 0)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %27, %21
  %33 = load i32, i32* @DS1631_CONTROL_10BIT, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @DS1631_CONTROL, align 4
  %37 = call i32 @ds1631_write(i32 %34, i32 %35, i32 %36, i32* %6, i32 1)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %3, align 4
  br label %58

44:                                               ; preds = %32
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @DS1631_START, align 4
  %48 = call i32 @ds1631_write(i32 %45, i32 %46, i32 %47, i32* %6, i32 0)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i32 -1, i32* %3, align 4
  br label %58

55:                                               ; preds = %44
  %56 = load %struct.ds1631_softc*, %struct.ds1631_softc** %8, align 8
  %57 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %51, %40, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.ds1631_softc* @device_get_softc(i32) #1

declare dso_local i32 @ds1631_read_1(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @ds1631_write(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
