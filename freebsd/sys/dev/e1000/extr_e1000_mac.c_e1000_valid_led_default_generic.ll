; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_valid_led_default_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_valid_led_default_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32, i64*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"e1000_valid_led_default_generic\00", align 1
@NVM_ID_LED_SETTINGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@ID_LED_RESERVED_0000 = common dso_local global i64 0, align 8
@ID_LED_RESERVED_FFFF = common dso_local global i64 0, align 8
@ID_LED_DEFAULT = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_valid_led_default_generic(%struct.e1000_hw* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64 (%struct.e1000_hw.0*, i32, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i32, i64*)** %11, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = bitcast %struct.e1000_hw* %13 to %struct.e1000_hw.0*
  %15 = load i32, i32* @NVM_ID_LED_SETTINGS, align 4
  %16 = load i64*, i64** %5, align 8
  %17 = call i64 %12(%struct.e1000_hw.0* %14, i32 %15, i32 1, i64* %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* %6, align 8
  store i64 %22, i64* %3, align 8
  br label %38

23:                                               ; preds = %2
  %24 = load i64*, i64** %5, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ID_LED_RESERVED_0000, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ID_LED_RESERVED_FFFF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %23
  %34 = load i64, i64* @ID_LED_DEFAULT, align 8
  %35 = load i64*, i64** %5, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %20
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
