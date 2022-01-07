; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_cpu.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_cpu.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@KTR_SPARE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cpu_idle(%d) at %d\00", align 1
@curcpu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cpu_idle(%d) at %d done\00", align 1
@PSL_EE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_idle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  %4 = load i32, i32* @KTR_SPARE2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @curcpu, align 4
  %7 = call i32 @CTR2(i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = call i32 (...) @critical_enter()
  %12 = call i32 (...) @cpu_idleclock()
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @cpu_idle_hook(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = call i32 (...) @cpu_activeclock()
  %20 = call i32 (...) @critical_exit()
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* @KTR_SPARE2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @curcpu, align 4
  %25 = call i32 @CTR2(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @cpu_idleclock(...) #1

declare dso_local i32 @cpu_idle_hook(i32) #1

declare dso_local i32 @cpu_activeclock(...) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
