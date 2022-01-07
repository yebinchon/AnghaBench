; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_cpu_mwait_usable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_cpu_mwait_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_feature2 = common dso_local global i32 0, align 4
@CPUID2_MON = common dso_local global i32 0, align 4
@cpu_mon_mwait_flags = common dso_local global i32 0, align 4
@CPUID5_MON_MWAIT_EXT = common dso_local global i32 0, align 4
@CPUID5_MWAIT_INTRBREAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_mwait_usable() #0 {
  %1 = load i32, i32* @cpu_feature2, align 4
  %2 = load i32, i32* @CPUID2_MON, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i32, i32* @cpu_mon_mwait_flags, align 4
  %7 = load i32, i32* @CPUID5_MON_MWAIT_EXT, align 4
  %8 = load i32, i32* @CPUID5_MWAIT_INTRBREAK, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = load i32, i32* @CPUID5_MON_MWAIT_EXT, align 4
  %12 = load i32, i32* @CPUID5_MWAIT_INTRBREAK, align 4
  %13 = or i32 %11, %12
  %14 = icmp eq i32 %10, %13
  br label %15

15:                                               ; preds = %5, %0
  %16 = phi i1 [ false, %0 ], [ %14, %5 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
