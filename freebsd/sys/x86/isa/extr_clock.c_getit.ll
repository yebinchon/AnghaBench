; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_clock.c_getit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_clock.c_getit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clock_lock = common dso_local global i32 0, align 4
@TIMER_MODE = common dso_local global i32 0, align 4
@TIMER_SEL0 = common dso_local global i32 0, align 4
@TIMER_LATCH = common dso_local global i32 0, align 4
@TIMER_CNTR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @getit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @mtx_lock_spin(i32* @clock_lock)
  %4 = load i32, i32* @TIMER_MODE, align 4
  %5 = load i32, i32* @TIMER_SEL0, align 4
  %6 = load i32, i32* @TIMER_LATCH, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @outb(i32 %4, i32 %7)
  %9 = load i32, i32* @TIMER_CNTR0, align 4
  %10 = call i32 @inb(i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @TIMER_CNTR0, align 4
  %12 = call i32 @inb(i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = call i32 @mtx_unlock_spin(i32* @clock_lock)
  %14 = load i32, i32* %1, align 4
  %15 = shl i32 %14, 8
  %16 = load i32, i32* %2, align 4
  %17 = or i32 %15, %16
  ret i32 %17
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
