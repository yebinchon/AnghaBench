; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_probe_keyboard.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_probe_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@KBDC_DISABLE_KBD_PORT = common dso_local global i32 0, align 4
@KBD_KBD_CONTROL_BITS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KB_CONF_NO_PROBE_TEST = common dso_local global i32 0, align 4
@KBDC_QUIRK_IGNORE_PROBE_RESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @probe_keyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_keyboard(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @kbdc_lock(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @KBDC_DISABLE_KBD_PORT, align 4
  %18 = call i32 @write_controller_command(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @empty_both_buffers(i32 %19, i32 100)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @kbdc_get_device_mask(i32 %21)
  %23 = load i32, i32* @KBD_KBD_CONTROL_BITS, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @get_controller_command_byte(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %38

30:                                               ; preds = %15
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @kbdc_set_device_mask(i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @kbdc_lock(i32 %34, i32 %35)
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %15
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @test_controller(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @KB_CONF_NO_PROBE_TEST, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @test_kbd_port(i32 %46)
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @get_kbd_echo(i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @KBD_KBD_CONTROL_BITS, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @kbdc_set_device_mask(i32 %51, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i32 @setup_kbd_port(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @kbdc_lock(i32 %60, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @KBDC_QUIRK_IGNORE_PROBE_RESULT, align 4
  %65 = call i64 @HAS_QUIRK(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %48
  br label %70

68:                                               ; preds = %48
  %69 = load i32, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ 0, %67 ], [ %69, %68 ]
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %30, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @kbdc_lock(i32, i32) #1

declare dso_local i32 @write_controller_command(i32, i32) #1

declare dso_local i32 @empty_both_buffers(i32, i32) #1

declare dso_local i32 @kbdc_get_device_mask(i32) #1

declare dso_local i32 @get_controller_command_byte(i32) #1

declare dso_local i32 @kbdc_set_device_mask(i32, i32) #1

declare dso_local i32 @test_controller(i32) #1

declare dso_local i32 @test_kbd_port(i32) #1

declare dso_local i32 @get_kbd_echo(i32) #1

declare dso_local i32 @setup_kbd_port(i32, i32, i32) #1

declare dso_local i64 @HAS_QUIRK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
