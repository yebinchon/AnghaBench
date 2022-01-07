; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_restore_cpu_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_restore_cpu_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pmc_binding = type { i32, i64 }

@CPU = common dso_local global i32 0, align 4
@BND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"restore-cpu curcpu=%d restore=%d\00", align 1
@curthread = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"restore-cpu done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmc_binding*)* @pmc_restore_cpu_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmc_restore_cpu_binding(%struct.pmc_binding* %0) #0 {
  %2 = alloca %struct.pmc_binding*, align 8
  store %struct.pmc_binding* %0, %struct.pmc_binding** %2, align 8
  %3 = load i32, i32* @CPU, align 4
  %4 = load i32, i32* @BND, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pmc_binding*, %struct.pmc_binding** %2, align 8
  %9 = getelementptr inbounds %struct.pmc_binding, %struct.pmc_binding* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @PMCDBG2(i32 %3, i32 %4, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %13 = call i32 @thread_lock(%struct.TYPE_6__* %12)
  %14 = load %struct.pmc_binding*, %struct.pmc_binding** %2, align 8
  %15 = getelementptr inbounds %struct.pmc_binding, %struct.pmc_binding* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %20 = load %struct.pmc_binding*, %struct.pmc_binding** %2, align 8
  %21 = getelementptr inbounds %struct.pmc_binding, %struct.pmc_binding* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @sched_bind(%struct.TYPE_6__* %19, i32 %22)
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %26 = call i32 @sched_unbind(%struct.TYPE_6__* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %29 = call i32 @thread_unlock(%struct.TYPE_6__* %28)
  %30 = load i32, i32* @CPU, align 4
  %31 = load i32, i32* @BND, align 4
  %32 = call i32 @PMCDBG0(i32 %30, i32 %31, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @PMCDBG2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @thread_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @sched_bind(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sched_unbind(%struct.TYPE_6__*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @PMCDBG0(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
