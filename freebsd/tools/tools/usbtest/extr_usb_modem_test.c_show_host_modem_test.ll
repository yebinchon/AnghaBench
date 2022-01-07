; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_modem_test.c_show_host_modem_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_modem_test.c_show_host_modem_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64 }

@modem = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"Modem Test Parameters\00", align 1
@.str.1 = private unnamed_addr constant [370 x i8] c" 1) Execute Data Stress Test: <%s>\0A 2) Execute Modem Control Endpoint Test: <%s>\0A 3) Use random transmit length: <%s>\0A 4) Use random transmit delay: <%s> ms\0A 5) Use vendor specific interface: <%s>\0A10) Loop data: <%s>\0A13) Set test duration: <%d> seconds\0A20) Reset parameters\0A30) Start test (VID=0x%04x, PID=0x%04x)\0A40) Select another device\0A x) Return to previous menu \0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_host_modem_test(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = call i32 @set_defaults(%struct.TYPE_4__* @modem)
  %11 = load i64, i64* %8, align 8
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 6), align 8
  br label %12

12:                                               ; preds = %4, %78
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 0), align 8
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 1), align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 2), align 8
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 3), align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 4), align 8
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 5), align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 6), align 8
  %39 = trunc i64 %38 to i32
  %40 = load i64, i64* %6, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @usb_ts_show_menu(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([370 x i8], [370 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %21, i8* %25, i8* %29, i8* %33, i8* %37, i32 %39, i32 %41, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  switch i32 %45, label %77 [
    i32 0, label %46
    i32 1, label %47
    i32 2, label %50
    i32 3, label %53
    i32 4, label %56
    i32 5, label %59
    i32 10, label %62
    i32 13, label %65
    i32 20, label %67
    i32 30, label %69
    i32 40, label %73
  ]

46:                                               ; preds = %12
  br label %78

47:                                               ; preds = %12
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 0), align 8
  %49 = xor i32 %48, 1
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 0), align 8
  br label %78

50:                                               ; preds = %12
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 1), align 4
  %52 = xor i32 %51, 1
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 1), align 4
  br label %78

53:                                               ; preds = %12
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 2), align 8
  %55 = xor i32 %54, 1
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 2), align 8
  br label %78

56:                                               ; preds = %12
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 3), align 4
  %58 = xor i32 %57, 1
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 3), align 4
  br label %78

59:                                               ; preds = %12
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 4), align 8
  %61 = xor i32 %60, 1
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 1), align 4
  br label %78

62:                                               ; preds = %12
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 5), align 4
  %64 = xor i32 %63, 1
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 5), align 4
  br label %78

65:                                               ; preds = %12
  %66 = call i64 (...) @get_integer()
  store i64 %66, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modem, i32 0, i32 6), align 8
  br label %78

67:                                               ; preds = %12
  %68 = call i32 @set_defaults(%struct.TYPE_4__* @modem)
  br label %78

69:                                               ; preds = %12
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @exec_host_modem_test(%struct.TYPE_4__* @modem, i64 %70, i64 %71)
  br label %78

73:                                               ; preds = %12
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @show_host_device_selection(i32 %75, i64* %6, i64* %7)
  br label %78

77:                                               ; preds = %12
  ret void

78:                                               ; preds = %73, %69, %67, %65, %62, %59, %56, %53, %50, %47, %46
  br label %12
}

declare dso_local i32 @set_defaults(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_ts_show_menu(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @get_integer(...) #1

declare dso_local i32 @exec_host_modem_test(%struct.TYPE_4__*, i64, i64) #1

declare dso_local i32 @show_host_device_selection(i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
