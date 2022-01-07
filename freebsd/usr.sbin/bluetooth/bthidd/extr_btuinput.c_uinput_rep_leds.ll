; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_btuinput.c_uinput_rep_leds.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_btuinput.c_uinput_rep_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVDEV_RCPT_HW_KBD = common dso_local global i64 0, align 8
@led_codes = common dso_local global i32* null, align 8
@EV_LED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uinput_rep_leds(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = icmp sge i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i64 (...) @uinput_get_rcpt_mask()
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @EVDEV_RCPT_HW_KBD, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %56

20:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i64, i64* %8, align 8
  %23 = load i32*, i32** @led_codes, align 8
  %24 = call i64 @nitems(i32* %23)
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i64, i64* %8, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 1, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @EV_LED, align 4
  %36 = load i32*, i32** @led_codes, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i64, i64* %8, align 8
  %42 = trunc i64 %41 to i32
  %43 = shl i32 1, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = call i64 @uinput_write_event(i64 %34, i32 %35, i32 %39, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  store i64 -1, i64* %4, align 8
  br label %56

51:                                               ; preds = %33, %26
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %8, align 8
  br label %21

55:                                               ; preds = %21
  store i64 0, i64* %4, align 8
  br label %56

56:                                               ; preds = %55, %50, %19
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @uinput_get_rcpt_mask(...) #1

declare dso_local i64 @nitems(i32*) #1

declare dso_local i64 @uinput_write_event(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
