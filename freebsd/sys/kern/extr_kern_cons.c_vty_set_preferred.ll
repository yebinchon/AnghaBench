; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cons.c_vty_set_preferred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cons.c_vty_set_preferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vty_prefer = common dso_local global i32 0, align 4
@VTY_SC = common dso_local global i32 0, align 4
@VTY_VT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vty_set_preferred(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @vty_prefer, align 4
  %4 = load i32, i32* @VTY_SC, align 4
  %5 = xor i32 %4, -1
  %6 = load i32, i32* @vty_prefer, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* @vty_prefer, align 4
  %8 = load i32, i32* @VTY_VT, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @vty_prefer, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* @vty_prefer, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
