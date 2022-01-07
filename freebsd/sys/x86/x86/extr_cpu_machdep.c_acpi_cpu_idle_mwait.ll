; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_acpi_cpu_idle_mwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_acpi_cpu_idle_mwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@monitorbuf = common dso_local global i32 0, align 4
@STATE_SLEEPING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"cpu_mwait_cx: wrong monitorbuf state\00", align 1
@STATE_MWAIT = common dso_local global i64 0, align 8
@ibpb_set = common dso_local global i32 0, align 4
@hw_ssb_active = common dso_local global i64 0, align 8
@MSR_IA32_SPEC_CTRL = common dso_local global i32 0, align 4
@IA32_SPEC_CTRL_IBRS = common dso_local global i32 0, align 4
@IA32_SPEC_CTRL_STIBP = common dso_local global i32 0, align 4
@IA32_SPEC_CTRL_SSBD = common dso_local global i32 0, align 4
@MWAIT_INTRBREAK = common dso_local global i32 0, align 4
@STATE_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_cpu_idle_mwait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @monitorbuf, align 4
  %6 = call %struct.TYPE_2__* @PCPU_PTR(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @atomic_load_int(i32* %8)
  %10 = load i64, i64* @STATE_SLEEPING, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = load i64, i64* @STATE_MWAIT, align 8
  %16 = call i32 @atomic_store_int(i32* %14, i64 %15)
  %17 = load i32, i32* @ibpb_set, align 4
  %18 = call i64 @PCPU_GET(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i64, i64* @hw_ssb_active, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %20, %1
  %24 = load i32, i32* @MSR_IA32_SPEC_CTRL, align 4
  %25 = call i32 @rdmsr(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @MSR_IA32_SPEC_CTRL, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IA32_SPEC_CTRL_IBRS, align 4
  %29 = load i32, i32* @IA32_SPEC_CTRL_STIBP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IA32_SPEC_CTRL_SSBD, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %27, %33
  %35 = call i32 @wrmsr(i32 %26, i32 %34)
  br label %37

36:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @cpu_monitor(i32* %38, i32 0, i32 0)
  %40 = load i32*, i32** %3, align 8
  %41 = call i64 @atomic_load_int(i32* %40)
  %42 = load i64, i64* @STATE_MWAIT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @MWAIT_INTRBREAK, align 4
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @cpu_mwait(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @MSR_IA32_SPEC_CTRL, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @wrmsr(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32*, i32** %3, align 8
  %57 = load i64, i64* @STATE_RUNNING, align 8
  %58 = call i32 @atomic_store_int(i32* %56, i64 %57)
  ret void
}

declare dso_local %struct.TYPE_2__* @PCPU_PTR(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @atomic_load_int(i32*) #1

declare dso_local i32 @atomic_store_int(i32*, i64) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @cpu_monitor(i32*, i32, i32) #1

declare dso_local i32 @cpu_mwait(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
