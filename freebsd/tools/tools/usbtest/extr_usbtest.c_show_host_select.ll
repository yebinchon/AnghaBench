; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usbtest.c_show_host_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usbtest.c_show_host_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"hw.usb.ehci.no_hs\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"WARNING: Could not set non-FS mode to %d (error=%d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Select Host Mode Test (via LibUSB)\00", align 1
@.str.3 = private unnamed_addr constant [507 x i8] c" 1) Select USB device (VID=0x%04x, PID=0x%04x)\0A 2) Manually enter USB vendor and product ID\0A 3) Force FULL speed operation: <%s>\0A 4) Mass Storage (UMASS)\0A 5) Modem (UMODEM)\0A10) Start String Descriptor Test\0A11) Start Port Reset Test\0A12) Start Set Config Test\0A13) Start Get Descriptor Test\0A14) Start Suspend and Resume Test\0A15) Start Set and Clear Endpoint Stall Test\0A16) Start Set Alternate Interface Setting Test\0A17) Start Invalid Control Request Test\0A30) Duration: <%d> seconds\0Ax) Return to previous menu\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @show_host_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_host_select(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 60, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %1, %94
  %10 = call i32 @sysctlbyname(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* %3, i32 4)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @usb_ts_show_menu(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([507 x i8], [507 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32 %20, i8* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %93 [
    i32 0, label %28
    i32 1, label %29
    i32 2, label %33
    i32 3, label %38
    i32 4, label %41
    i32 5, label %48
    i32 10, label %55
    i32 11, label %59
    i32 12, label %64
    i32 13, label %69
    i32 14, label %74
    i32 15, label %79
    i32 16, label %83
    i32 17, label %87
    i32 30, label %91
  ]

28:                                               ; preds = %17
  br label %94

29:                                               ; preds = %17
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @show_host_device_selection(i32 %31, i32* %6, i32* %7)
  br label %94

33:                                               ; preds = %17
  %34 = call i32 (...) @get_integer()
  %35 = and i32 %34, 65535
  store i32 %35, i32* %6, align 4
  %36 = call i32 (...) @get_integer()
  %37 = and i32 %36, 65535
  store i32 %37, i32* %7, align 4
  br label %94

38:                                               ; preds = %17
  %39 = load i32, i32* %3, align 4
  %40 = xor i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %94

41:                                               ; preds = %17
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @show_host_msc_test(i32 %43, i32 %44, i32 %45, i32 %46)
  br label %94

48:                                               ; preds = %17
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @show_host_modem_test(i32 %50, i32 %51, i32 %52, i32 %53)
  br label %94

55:                                               ; preds = %17
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @usb_get_string_desc_test(i32 %56, i32 %57)
  br label %94

59:                                               ; preds = %17
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @usb_port_reset_test(i32 %60, i32 %61, i32 %62)
  br label %94

64:                                               ; preds = %17
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @usb_set_config_test(i32 %65, i32 %66, i32 %67)
  br label %94

69:                                               ; preds = %17
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @usb_get_descriptor_test(i32 %70, i32 %71, i32 %72)
  br label %94

74:                                               ; preds = %17
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @usb_suspend_resume_test(i32 %75, i32 %76, i32 %77)
  br label %94

79:                                               ; preds = %17
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @usb_set_and_clear_stall_test(i32 %80, i32 %81)
  br label %94

83:                                               ; preds = %17
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @usb_set_alt_interface_test(i32 %84, i32 %85)
  br label %94

87:                                               ; preds = %17
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @usb_control_ep_error_test(i32 %88, i32 %89)
  br label %94

91:                                               ; preds = %17
  %92 = call i32 (...) @get_integer()
  store i32 %92, i32* %5, align 4
  br label %94

93:                                               ; preds = %17
  ret void

94:                                               ; preds = %91, %87, %83, %79, %74, %69, %64, %59, %55, %48, %41, %38, %33, %29, %28
  br label %9
}

declare dso_local i32 @sysctlbyname(i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @usb_ts_show_menu(i32, i8*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @show_host_device_selection(i32, i32*, i32*) #1

declare dso_local i32 @get_integer(...) #1

declare dso_local i32 @show_host_msc_test(i32, i32, i32, i32) #1

declare dso_local i32 @show_host_modem_test(i32, i32, i32, i32) #1

declare dso_local i32 @usb_get_string_desc_test(i32, i32) #1

declare dso_local i32 @usb_port_reset_test(i32, i32, i32) #1

declare dso_local i32 @usb_set_config_test(i32, i32, i32) #1

declare dso_local i32 @usb_get_descriptor_test(i32, i32, i32) #1

declare dso_local i32 @usb_suspend_resume_test(i32, i32, i32) #1

declare dso_local i32 @usb_set_and_clear_stall_test(i32, i32) #1

declare dso_local i32 @usb_set_alt_interface_test(i32, i32) #1

declare dso_local i32 @usb_control_ep_error_test(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
