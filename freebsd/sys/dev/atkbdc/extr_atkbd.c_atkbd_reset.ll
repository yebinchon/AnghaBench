; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_atkbd_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_atkbd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KB_CONF_NO_RESET = common dso_local global i32 0, align 4
@KBD_KBD_CONTROL_BITS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"atkbd: failed to reset the keyboard.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @atkbd_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_reset(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @KB_CONF_NO_RESET, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @reset_kbd(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @empty_both_buffers(i32 %17, i32 10)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @test_controller(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @test_kbd_port(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @ALLOW_DISABLE_KBD(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @KBD_KBD_CONTROL_BITS, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 255, %27 ], [ %29, %28 ]
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @set_controller_command_byte(i32 %23, i32 %31, i32 %32)
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, i32* @EIO, align 4
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @reset_kbd(i32) #1

declare dso_local i32 @empty_both_buffers(i32, i32) #1

declare dso_local i32 @test_controller(i32) #1

declare dso_local i32 @test_kbd_port(i32) #1

declare dso_local i32 @set_controller_command_byte(i32, i32, i32) #1

declare dso_local i64 @ALLOW_DISABLE_KBD(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
