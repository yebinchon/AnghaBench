; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npxinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npxinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.savefpu = type { i32 }

@npxinit.dummy = internal global %union.savefpu zeroinitializer, align 4
@use_xsave = common dso_local global i64 0, align 8
@CR4_XSAVE = common dso_local global i32 0, align 4
@XCR0 = common dso_local global i32 0, align 4
@xsave_mask = common dso_local global i32 0, align 4
@cpu_fxsr = common dso_local global i64 0, align 8
@__INITIAL_NPXCW__ = common dso_local global i32 0, align 4
@__INITIAL_MXCSR__ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @npxinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = call i32 (...) @npx_probe()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  br label %53

12:                                               ; preds = %8
  %13 = call i32 (...) @npxinit_bsp1()
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i64, i64* @use_xsave, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = call i32 (...) @rcr4()
  %19 = load i32, i32* @CR4_XSAVE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @load_cr4(i32 %20)
  %22 = load i32, i32* @XCR0, align 4
  %23 = load i32, i32* @xsave_mask, align 4
  %24 = call i32 @load_xcr(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @npxinit_bsp2()
  br label %30

30:                                               ; preds = %28, %25
  %31 = call i32 (...) @intr_disable()
  store i32 %31, i32* %3, align 4
  %32 = call i32 (...) @stop_emulating()
  %33 = load i64, i64* @cpu_fxsr, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (...) @fninit()
  br label %39

37:                                               ; preds = %30
  %38 = call i32 @fnsave(%union.savefpu* @npxinit.dummy)
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* @__INITIAL_NPXCW__, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @fldcw(i32 %41)
  %43 = load i64, i64* @cpu_fxsr, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @__INITIAL_MXCSR__, align 4
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @ldmxcsr(i32 %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = call i32 (...) @start_emulating()
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @intr_restore(i32 %51)
  br label %53

53:                                               ; preds = %49, %11
  ret void
}

declare dso_local i32 @npx_probe(...) #1

declare dso_local i32 @npxinit_bsp1(...) #1

declare dso_local i32 @load_cr4(i32) #1

declare dso_local i32 @rcr4(...) #1

declare dso_local i32 @load_xcr(i32, i32) #1

declare dso_local i32 @npxinit_bsp2(...) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @stop_emulating(...) #1

declare dso_local i32 @fninit(...) #1

declare dso_local i32 @fnsave(%union.savefpu*) #1

declare dso_local i32 @fldcw(i32) #1

declare dso_local i32 @ldmxcsr(i32) #1

declare dso_local i32 @start_emulating(...) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
