; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_intr_machdep.c_riscv_cpu_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_intr_machdep.c_riscv_cpu_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.intr_irqsrc }
%struct.intr_irqsrc = type { i32 }
%struct.trapframe = type { i32 }

@EXCP_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"riscv_cpu_intr: wrong frame passed\00", align 1
@EXCP_MASK = common dso_local global i32 0, align 4
@isrcs = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"stray interrupt %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @riscv_cpu_intr(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.intr_irqsrc*, align 8
  %4 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %5 = call i32 (...) @critical_enter()
  %6 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %7 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @EXCP_INTR, align 4
  %10 = and i32 %8, %9
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %13 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EXCP_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %35 [
    i32 129, label %18
    i32 130, label %18
    i32 128, label %18
    i32 131, label %32
  ]

18:                                               ; preds = %1, %1, %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @isrcs, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.intr_irqsrc* %23, %struct.intr_irqsrc** %3, align 8
  %24 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %3, align 8
  %25 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %26 = call i32 @intr_isrc_dispatch(%struct.intr_irqsrc* %24, %struct.trapframe* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %18
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %34 = call i32 @intr_irq_handler(%struct.trapframe* %33)
  br label %36

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %35, %32, %31
  %37 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @intr_isrc_dispatch(%struct.intr_irqsrc*, %struct.trapframe*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @intr_irq_handler(%struct.trapframe*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
