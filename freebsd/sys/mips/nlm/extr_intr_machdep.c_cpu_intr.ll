; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_intr_machdep.c_cpu_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_intr_machdep.c_cpu_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.intr_event* }
%struct.intr_event = type { i32 }
%struct.trapframe = type { i32 }

@IRQ_TIMER = common dso_local global i32 0, align 4
@xlp_interrupts = common dso_local global %struct.TYPE_2__* null, align 8
@mips_intr_counters = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"stray interrupt %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_intr(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.intr_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %7 = call i32 (...) @critical_enter()
  %8 = call i32 (...) @nlm_read_c0_eirr()
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @nlm_read_c0_eimr()
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (...) @critical_exit()
  br label %80

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IRQ_TIMER, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xlp_interrupts, align 8
  %25 = load i32, i32* @IRQ_TIMER, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.intr_event*, %struct.intr_event** %28, align 8
  %30 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %31 = call i64 @intr_event_handle(%struct.intr_event* %29, %struct.trapframe* %30)
  %32 = call i32 (...) @critical_exit()
  br label %80

33:                                               ; preds = %17
  store i32 31, i32* %6, align 4
  br label %34

34:                                               ; preds = %75, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = shl i64 1, %41
  %43 = and i64 %39, %42
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %75

46:                                               ; preds = %37
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xlp_interrupts, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.intr_event*, %struct.intr_event** %51, align 8
  store %struct.intr_event* %52, %struct.intr_event** %3, align 8
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %55 [
    i32 129, label %54
    i32 128, label %54
  ]

54:                                               ; preds = %46, %46
  br label %62

55:                                               ; preds = %46
  %56 = load i32*, i32** @mips_intr_counters, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mips_intrcnt_inc(i32 %60)
  br label %62

62:                                               ; preds = %55, %54
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 1, %64
  %66 = call i32 @nlm_write_c0_eirr(i64 %65)
  %67 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %68 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %69 = call i64 @intr_event_handle(%struct.intr_event* %67, %struct.trapframe* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %62
  br label %75

75:                                               ; preds = %74, %45
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %6, align 4
  br label %34

78:                                               ; preds = %34
  %79 = call i32 (...) @critical_exit()
  br label %80

80:                                               ; preds = %78, %23, %15
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @nlm_read_c0_eirr(...) #1

declare dso_local i32 @nlm_read_c0_eimr(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i64 @intr_event_handle(%struct.intr_event*, %struct.trapframe*) #1

declare dso_local i32 @mips_intrcnt_inc(i32) #1

declare dso_local i32 @nlm_write_c0_eirr(i64) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
