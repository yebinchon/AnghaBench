; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_intr_machdep.c_cpu_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_intr_machdep.c_cpu_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_event = type { i32 }
%struct.trapframe = type { i32 }

@MIPS_INT_MASK = common dso_local global i32 0, align 4
@softintr_events = common dso_local global %struct.intr_event** null, align 8
@mips_intr_counters = common dso_local global i32* null, align 8
@hardintr_events = common dso_local global %struct.intr_event** null, align 8
@NSOFT_IRQS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"stray %s interrupt %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"all interrupts handled\00", align 1
@PMC_FN_USER_CALLCHAIN = common dso_local global i32 0, align 4
@TDP_CALLCHAIN = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_intr(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.intr_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %9 = call i32 (...) @critical_enter()
  %10 = call i32 (...) @mips_rd_cause()
  store i32 %10, i32* %4, align 4
  %11 = call i32 (...) @mips_rd_status()
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MIPS_INT_MASK, align 4
  %14 = and i32 %12, %13
  %15 = ashr i32 %14, 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MIPS_INT_MASK, align 4
  %18 = and i32 %16, %17
  %19 = ashr i32 %18, 8
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %93, %74, %1
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @fls(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %94

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %48 [
    i32 1, label %34
    i32 2, label %34
  ]

34:                                               ; preds = %26, %26
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %37 = load %struct.intr_event**, %struct.intr_event*** @softintr_events, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %37, i64 %39
  %41 = load %struct.intr_event*, %struct.intr_event** %40, align 8
  store %struct.intr_event* %41, %struct.intr_event** %3, align 8
  %42 = load i32*, i32** @mips_intr_counters, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mips_intrcnt_inc(i32 %46)
  br label %66

48:                                               ; preds = %26
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 2
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  store i32 1, i32* %6, align 4
  %53 = load %struct.intr_event**, %struct.intr_event*** @hardintr_events, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %53, i64 %55
  %57 = load %struct.intr_event*, %struct.intr_event** %56, align 8
  store %struct.intr_event* %57, %struct.intr_event** %3, align 8
  %58 = load i32*, i32** @mips_intr_counters, align 8
  %59 = load i32, i32* @NSOFT_IRQS, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mips_intrcnt_inc(i32 %64)
  br label %66

66:                                               ; preds = %48, %34
  %67 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %68 = icmp ne %struct.intr_event* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %71 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %70, i32 0, i32 0
  %72 = call i64 @CK_SLIST_EMPTY(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %78, i32 %79)
  br label %22

81:                                               ; preds = %69
  %82 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %83 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %84 = call i64 @intr_event_handle(%struct.intr_event* %82, %struct.trapframe* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %81
  br label %22

94:                                               ; preds = %22
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @KASSERT(i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %99 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @mips_rd_cause(...) #1

declare dso_local i32 @mips_rd_status(...) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @mips_intrcnt_inc(i32) #1

declare dso_local i64 @CK_SLIST_EMPTY(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i64 @intr_event_handle(%struct.intr_event*, %struct.trapframe*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
