; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_get_kbd_echo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_get_kbd_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@KBDC_ECHO = common dso_local global i32 0, align 4
@KBD_ECHO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_kbd_echo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_kbd_echo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @TRUE, align 4
  %6 = load i32, i32* @FALSE, align 4
  %7 = call i64 @setup_kbd_port(i32 %4, i32 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @KBDC_ECHO, align 4
  %14 = call i32 @write_kbd_command(i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @read_kbd_data(i32 %15)
  %17 = load i64, i64* @KBD_ECHO, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @empty_both_buffers(i32 %20, i32 10)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @test_controller(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @test_kbd_port(i32 %24)
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i64 @setup_kbd_port(i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %33, %19, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @setup_kbd_port(i32, i32, i32) #1

declare dso_local i32 @write_kbd_command(i32, i32) #1

declare dso_local i64 @read_kbd_data(i32) #1

declare dso_local i32 @empty_both_buffers(i32, i32) #1

declare dso_local i32 @test_controller(i32) #1

declare dso_local i32 @test_kbd_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
