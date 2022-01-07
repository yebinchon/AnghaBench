; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_btuinput.c_uinput_rep_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_btuinput.c_uinput_rep_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVDEV_RCPT_HW_KBD = common dso_local global i64 0, align 8
@keymap = common dso_local global i64* null, align 8
@NONE = common dso_local global i64 0, align 8
@EV_KEY = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@SYN_REPORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uinput_rep_key(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = call i64 (...) @uinput_get_rcpt_mask()
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @EVDEV_RCPT_HW_KBD, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %53

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = load i64*, i64** @keymap, align 8
  %25 = call i64 @nitems(i64* %24)
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load i64*, i64** @keymap, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* @EV_KEY, align 4
  %37 = load i64*, i64** @keymap, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @uinput_write_event(i64 %35, i32 %36, i64 %40, i64 %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %34
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @EV_SYN, align 4
  %47 = load i64, i64* @SYN_REPORT, align 8
  %48 = call i64 @uinput_write_event(i64 %45, i32 %46, i64 %47, i64 0)
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i64 0, i64* %4, align 8
  br label %53

51:                                               ; preds = %44, %34
  br label %52

52:                                               ; preds = %51, %27, %22, %19
  store i64 -1, i64* %4, align 8
  br label %53

53:                                               ; preds = %52, %50, %18
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @uinput_get_rcpt_mask(...) #1

declare dso_local i64 @nitems(i64*) #1

declare dso_local i64 @uinput_write_event(i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
