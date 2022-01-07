; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usbtest.c_show_device_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usbtest.c_show_device_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Select Device Mode Test Group\00", align 1
@.str.1 = private unnamed_addr constant [236 x i8] c"1) Audio (UAUDIO)\0A2) Mass Storage (MSC)\0A3) Ethernet (CDCE)\0A4) Keyboard Input Device (UKBD)\0A5) Mouse Input Device (UMS)\0A6) Message Transfer Protocol (MTP)\0A7) Modem (CDC)\0A8) Generic Endpoint Loopback (GENERIC)\0Ax) Return to previous menu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @show_device_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_device_select(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %4

4:                                                ; preds = %1, %42
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @usb_ts_show_menu(i32 %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.1, i64 0, i64 0))
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %41 [
    i32 0, label %8
    i32 1, label %9
    i32 2, label %13
    i32 3, label %17
    i32 4, label %21
    i32 5, label %25
    i32 6, label %29
    i32 7, label %33
    i32 8, label %37
  ]

8:                                                ; preds = %4
  br label %42

9:                                                ; preds = %4
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i32 @show_device_audio_select(i32 %11)
  br label %42

13:                                               ; preds = %4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i32 @show_device_msc_select(i32 %15)
  br label %42

17:                                               ; preds = %4
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @show_device_ethernet_select(i32 %19)
  br label %42

21:                                               ; preds = %4
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @show_device_keyboard_select(i32 %23)
  br label %42

25:                                               ; preds = %4
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @show_device_mouse_select(i32 %27)
  br label %42

29:                                               ; preds = %4
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @show_device_mtp_select(i32 %31)
  br label %42

33:                                               ; preds = %4
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @show_device_modem_select(i32 %35)
  br label %42

37:                                               ; preds = %4
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @show_device_generic_select(i32 %39)
  br label %42

41:                                               ; preds = %4
  ret void

42:                                               ; preds = %37, %33, %29, %25, %21, %17, %13, %9, %8
  br label %4
}

declare dso_local i32 @usb_ts_show_menu(i32, i8*, i8*) #1

declare dso_local i32 @show_device_audio_select(i32) #1

declare dso_local i32 @show_device_msc_select(i32) #1

declare dso_local i32 @show_device_ethernet_select(i32) #1

declare dso_local i32 @show_device_keyboard_select(i32) #1

declare dso_local i32 @show_device_mouse_select(i32) #1

declare dso_local i32 @show_device_mtp_select(i32) #1

declare dso_local i32 @show_device_modem_select(i32) #1

declare dso_local i32 @show_device_generic_select(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
