; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_modem_test.c_modem_out_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_modem_test.c_modem_out_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@modem = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @modem_out_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modem_out_state(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 2), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 8
  %7 = and i32 %6, 3
  switch i32 %7, label %14 [
    i32 0, label %8
    i32 1, label %10
    i32 2, label %12
  ]

8:                                                ; preds = %5
  %9 = load i8*, i8** %2, align 8
  store i8 65, i8* %9, align 1
  br label %18

10:                                               ; preds = %5
  %11 = load i8*, i8** %2, align 8
  store i8 84, i8* %11, align 1
  br label %18

12:                                               ; preds = %5
  %13 = load i8*, i8** %2, align 8
  store i8 13, i8* %13, align 1
  br label %18

14:                                               ; preds = %5
  %15 = load i8*, i8** %2, align 8
  store i8 10, i8* %15, align 1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 1), align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 1), align 4
  br label %18

18:                                               ; preds = %14, %12, %10, %8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 8
  br label %29

21:                                               ; preds = %1
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 8
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %2, align 8
  store i8 %23, i8* %24, align 1
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 8
  %28 = srem i32 %27, 255
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modem, i32 0, i32 0), align 8
  br label %29

29:                                               ; preds = %21, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
