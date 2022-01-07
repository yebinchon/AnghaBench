; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_process_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_process_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pmc = type { i32 }
%struct.trapframe = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@PMC_F_USERCALLCHAIN = common dso_local global i32 0, align 4
@P_KPROC = common dso_local global i32 0, align 4
@PMC_UR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmc_process_interrupt(i32 %0, %struct.pmc* %1, %struct.trapframe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmc*, align 8
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca %struct.thread*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.pmc* %1, %struct.pmc** %6, align 8
  store %struct.trapframe* %2, %struct.trapframe** %7, align 8
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %8, align 8
  %10 = load %struct.pmc*, %struct.pmc** %6, align 8
  %11 = getelementptr inbounds %struct.pmc, %struct.pmc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PMC_F_USERCALLCHAIN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %3
  %17 = load %struct.thread*, %struct.thread** %8, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @P_KPROC, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %27 = call i32 @TRAPF_USERMODE(%struct.trapframe* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load %struct.thread*, %struct.thread** %8, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = call i32 @atomic_add_int(i32* %31, i32 1)
  %33 = load i32, i32* @PMC_UR, align 4
  %34 = load %struct.pmc*, %struct.pmc** %6, align 8
  %35 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %36 = call i32 @pmc_add_sample(i32 %33, %struct.pmc* %34, %struct.trapframe* %35)
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %25, %16, %3
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.pmc*, %struct.pmc** %6, align 8
  %40 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %41 = call i32 @pmc_add_sample(i32 %38, %struct.pmc* %39, %struct.trapframe* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %29
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @TRAPF_USERMODE(%struct.trapframe*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @pmc_add_sample(i32, %struct.pmc*, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
