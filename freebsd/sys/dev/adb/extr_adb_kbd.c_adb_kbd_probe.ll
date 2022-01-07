; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_kbd.c_adb_kbd_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_kbd.c_adb_kbd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADB_DEVICE_KEYBOARD = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Apple Standard Keyboard\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Apple Extended Keyboard\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Apple ISO Keyboard\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Apple Extended ISO Keyboard\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Apple Keyboard II\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Apple ISO Keyboard II\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"PowerBook Keyboard\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"PowerBook ISO Keyboard\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"PowerBook Extended Keyboard\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Apple Design Keyboard\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"PowerBook G3 Keyboard\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"iBook Keyboard\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"ADB Keyboard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adb_kbd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adb_kbd_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @adb_get_device_type(i32 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @ADB_DEVICE_KEYBOARD, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @adb_get_device_handler(i32 %13)
  switch i32 %14, label %51 [
    i32 1, label %15
    i32 2, label %18
    i32 4, label %21
    i32 5, label %24
    i32 8, label %27
    i32 9, label %30
    i32 12, label %33
    i32 13, label %36
    i32 24, label %39
    i32 27, label %42
    i32 195, label %45
    i32 196, label %48
  ]

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_set_desc(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %54

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_set_desc(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %54

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_set_desc(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %54

24:                                               ; preds = %12
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_set_desc(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %54

27:                                               ; preds = %12
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_set_desc(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %54

30:                                               ; preds = %12
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_set_desc(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %54

33:                                               ; preds = %12
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_set_desc(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %54

36:                                               ; preds = %12
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_set_desc(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %54

39:                                               ; preds = %12
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_set_desc(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %54

42:                                               ; preds = %12
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_set_desc(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %54

45:                                               ; preds = %12
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_set_desc(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %54

48:                                               ; preds = %12
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_set_desc(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %54

51:                                               ; preds = %12
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @device_set_desc(i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @adb_get_device_type(i32) #1

declare dso_local i32 @adb_get_device_handler(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
