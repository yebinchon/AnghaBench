; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_i210.c_e1000_valid_led_default_i210.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_i210.c_e1000_valid_led_default_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*, i32, i32, i64*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [29 x i8] c"e1000_valid_led_default_i210\00", align 1
@NVM_ID_LED_SETTINGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@ID_LED_RESERVED_0000 = common dso_local global i64 0, align 8
@ID_LED_RESERVED_FFFF = common dso_local global i64 0, align 8
@ID_LED_DEFAULT_I210_SERDES = common dso_local global i64 0, align 8
@ID_LED_DEFAULT_I210 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64*)* @e1000_valid_led_default_i210 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_valid_led_default_i210(%struct.e1000_hw* %0, i64* %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64 (%struct.e1000_hw.0*, i32, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i32, i64*)** %10, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = bitcast %struct.e1000_hw* %12 to %struct.e1000_hw.0*
  %14 = load i32, i32* @NVM_ID_LED_SETTINGS, align 4
  %15 = load i64*, i64** %4, align 8
  %16 = call i64 %11(%struct.e1000_hw.0* %13, i32 %14, i32 1, i64* %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %45

21:                                               ; preds = %2
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ID_LED_RESERVED_0000, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ID_LED_RESERVED_FFFF, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %26, %21
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %40 [
    i32 128, label %36
    i32 129, label %39
  ]

36:                                               ; preds = %31
  %37 = load i64, i64* @ID_LED_DEFAULT_I210_SERDES, align 8
  %38 = load i64*, i64** %4, align 8
  store i64 %37, i64* %38, align 8
  br label %43

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %31, %39
  %41 = load i64, i64* @ID_LED_DEFAULT_I210, align 8
  %42 = load i64*, i64** %4, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %26
  br label %45

45:                                               ; preds = %44, %19
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
