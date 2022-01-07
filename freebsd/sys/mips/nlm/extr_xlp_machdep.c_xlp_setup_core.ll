; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_xlp_setup_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_xlp_setup_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSU_DEFEATURE = common dso_local global i32 0, align 4
@SCHED_DEFEATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xlp_setup_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_setup_core() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @LSU_DEFEATURE, align 4
  %3 = call i32 @nlm_mfcr(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = or i32 %4, 1082130432
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = or i64 %7, 2147483648
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = and i64 %11, -15
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @LSU_DEFEATURE, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @nlm_mtcr(i32 %14, i32 %15)
  %17 = load i32, i32* @SCHED_DEFEATURE, align 4
  %18 = call i32 @nlm_mfcr(i32 %17)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = or i32 %19, 16777216
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* @SCHED_DEFEATURE, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @nlm_mtcr(i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @nlm_mfcr(i32) #1

declare dso_local i32 @nlm_mtcr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
