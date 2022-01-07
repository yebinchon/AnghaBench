; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_kbd.c_uinput_kbd_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_kbd.c_uinput_kbd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xsize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uinput_kbd_write(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %4
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %9, align 8
  br label %14

14:                                               ; preds = %29, %12
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @xsize, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i64 @bit_test(i32* %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @uinput_rep_key(i64 %24, i64 %25, i64 %26)
  br label %28

28:                                               ; preds = %23, %18
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %9, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %9, align 8
  br label %14

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32, %4
  ret void
}

declare dso_local i64 @bit_test(i32*, i64) #1

declare dso_local i32 @uinput_rep_key(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
