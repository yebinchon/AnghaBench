; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_cpu.c_cpu_booke_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_cpu.c_cpu_booke_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_idle_hook = common dso_local global i32* null, align 8
@cpu_idle_booke = common dso_local global i32* null, align 8
@HID0_DOZE = common dso_local global i32 0, align 4
@HID0_E500MC_BITMASK = common dso_local global i8* null, align 8
@HID0_E500_BITMASK = common dso_local global i8* null, align 8
@HID0_E5500_BITMASK = common dso_local global i8* null, align 8
@HID0_NAP = common dso_local global i32 0, align 4
@HID0_SLEEP = common dso_local global i32 0, align 4
@SPR_HID0 = common dso_local global i32 0, align 4
@cpu_idle_e500mc = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @cpu_booke_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_booke_setup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** @cpu_idle_hook, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32*, i32** @cpu_idle_booke, align 8
  store i32* %8, i32** @cpu_idle_hook, align 8
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
