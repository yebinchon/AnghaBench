; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_machdep.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_machdep.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIPS_SR_INT_IE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"interrupts disabled in idle process.\00", align 1
@MIPS_INT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"all interrupts masked in idle process.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_idle(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @mips_rd_status()
  %4 = load i32, i32* @MIPS_SR_INT_IE, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (...) @mips_rd_status()
  %10 = load i32, i32* @MIPS_INT_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = call i32 (...) @critical_enter()
  %19 = call i32 (...) @cpu_idleclock()
  br label %20

20:                                               ; preds = %17, %1
  %21 = call i32 (...) @mips_wait()
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = call i32 (...) @cpu_activeclock()
  %26 = call i32 (...) @critical_exit()
  br label %27

27:                                               ; preds = %24, %20
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mips_rd_status(...) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @cpu_idleclock(...) #1

declare dso_local i32 @mips_wait(...) #1

declare dso_local i32 @cpu_activeclock(...) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
