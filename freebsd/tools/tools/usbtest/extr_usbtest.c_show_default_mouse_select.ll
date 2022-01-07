; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usbtest.c_show_default_mouse_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usbtest.c_show_default_mouse_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_TEMP_MOUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"hw.usb.g_mouse.mode\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"WARNING: Could not set mouse mode to %d (error=%d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"hw.usb.g_mouse.cursor_update_interval\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"WARNING: Could not set cursor update interval to %d (error=%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"hw.usb.g_mouse.button_press_interval\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"WARNING: Could not set button press interval to %d (error=%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"hw.usb.g_mouse.cursor_radius\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"WARNING: Could not set cursor radius to %d (error=%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Default Mouse Settings\00", align 1
@.str.9 = private unnamed_addr constant [258 x i8] c"1) Set Silent mode %s\0A2) Set Circle mode %s\0A3) Set Square mode %s\0A4) Set Spiral mode %s\0A5) Change cursor radius: %d pixels\0A6) Change cursor update interval: %d ms\0A7) Change button[0] press interval: %d ms\0Ax) Return to previous menu\0As: Ready for enumeration\0A\00", align 1
@G_MOUSE_MODE_SILENT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"(selected)\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@G_MOUSE_MODE_CIRCLE = common dso_local global i32 0, align 4
@G_MOUSE_MODE_BOX = common dso_local global i32 0, align 4
@G_MOUSE_MODE_SPIRAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @show_default_mouse_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_default_mouse_select(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 128, i32* %6, align 4
  store i32 75, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @USB_TEMP_MOUSE, align 4
  %10 = call i32 @set_template(i32 %9)
  br label %11

11:                                               ; preds = %1, %86
  %12 = call i32 @sysctlbyname(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* %5, i32 4)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %11
  %20 = call i32 @sysctlbyname(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* %6, i32 4)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = call i32 @sysctlbyname(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32* null, i32* null, i32* %8, i32 4)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = call i32 @sysctlbyname(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* null, i32* %7, i32 4)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @G_MOUSE_MODE_SILENT, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @G_MOUSE_MODE_CIRCLE, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @G_MOUSE_MODE_BOX, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @G_MOUSE_MODE_SPIRAL, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @usb_ts_show_menu(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([258 x i8], [258 x i8]* @.str.9, i64 0, i64 0), i8* %49, i8* %54, i8* %59, i8* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  switch i32 %69, label %85 [
    i32 0, label %70
    i32 1, label %71
    i32 2, label %73
    i32 3, label %75
    i32 4, label %77
    i32 5, label %79
    i32 6, label %81
    i32 7, label %83
  ]

70:                                               ; preds = %43
  br label %86

71:                                               ; preds = %43
  %72 = load i32, i32* @G_MOUSE_MODE_SILENT, align 4
  store i32 %72, i32* %5, align 4
  br label %86

73:                                               ; preds = %43
  %74 = load i32, i32* @G_MOUSE_MODE_CIRCLE, align 4
  store i32 %74, i32* %5, align 4
  br label %86

75:                                               ; preds = %43
  %76 = load i32, i32* @G_MOUSE_MODE_BOX, align 4
  store i32 %76, i32* %5, align 4
  br label %86

77:                                               ; preds = %43
  %78 = load i32, i32* @G_MOUSE_MODE_SPIRAL, align 4
  store i32 %78, i32* %5, align 4
  br label %86

79:                                               ; preds = %43
  %80 = call i32 (...) @get_integer()
  store i32 %80, i32* %7, align 4
  br label %86

81:                                               ; preds = %43
  %82 = call i32 (...) @get_integer()
  store i32 %82, i32* %6, align 4
  br label %86

83:                                               ; preds = %43
  %84 = call i32 (...) @get_integer()
  store i32 %84, i32* %8, align 4
  br label %86

85:                                               ; preds = %43
  ret void

86:                                               ; preds = %83, %81, %79, %77, %75, %73, %71, %70
  br label %11
}

declare dso_local i32 @set_template(i32) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @usb_ts_show_menu(i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @get_integer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
