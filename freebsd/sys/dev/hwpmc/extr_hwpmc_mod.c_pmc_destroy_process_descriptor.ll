; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_destroy_process_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_destroy_process_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_process = type { i32 }
%struct.pmc_thread = type { i32 }

@pt_next = common dso_local global i32 0, align 4
@M_PMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmc_process*)* @pmc_destroy_process_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmc_destroy_process_descriptor(%struct.pmc_process* %0) #0 {
  %2 = alloca %struct.pmc_process*, align 8
  %3 = alloca %struct.pmc_thread*, align 8
  store %struct.pmc_process* %0, %struct.pmc_process** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.pmc_process*, %struct.pmc_process** %2, align 8
  %6 = getelementptr inbounds %struct.pmc_process, %struct.pmc_process* %5, i32 0, i32 0
  %7 = call %struct.pmc_thread* @LIST_FIRST(i32* %6)
  store %struct.pmc_thread* %7, %struct.pmc_thread** %3, align 8
  %8 = icmp ne %struct.pmc_thread* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = load %struct.pmc_thread*, %struct.pmc_thread** %3, align 8
  %11 = load i32, i32* @pt_next, align 4
  %12 = call i32 @LIST_REMOVE(%struct.pmc_thread* %10, i32 %11)
  %13 = load %struct.pmc_thread*, %struct.pmc_thread** %3, align 8
  %14 = call i32 @pmc_thread_descriptor_pool_free(%struct.pmc_thread* %13)
  br label %4

15:                                               ; preds = %4
  %16 = load %struct.pmc_process*, %struct.pmc_process** %2, align 8
  %17 = load i32, i32* @M_PMC, align 4
  %18 = call i32 @free(%struct.pmc_process* %16, i32 %17)
  ret void
}

declare dso_local %struct.pmc_thread* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.pmc_thread*, i32) #1

declare dso_local i32 @pmc_thread_descriptor_pool_free(%struct.pmc_thread*) #1

declare dso_local i32 @free(%struct.pmc_process*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
