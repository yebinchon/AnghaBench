; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_intel.c_intel_switch_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_intel.c_intel_switch_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_cpu = type { i32 }
%struct.pmc_process = type { i32 }

@MDP = common dso_local global i32 0, align 4
@SWO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pc=%p pp=%p cr4=0x%jx\00", align 1
@CR4_PCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmc_cpu*, %struct.pmc_process*)* @intel_switch_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_switch_out(%struct.pmc_cpu* %0, %struct.pmc_process* %1) #0 {
  %3 = alloca %struct.pmc_cpu*, align 8
  %4 = alloca %struct.pmc_process*, align 8
  store %struct.pmc_cpu* %0, %struct.pmc_cpu** %3, align 8
  store %struct.pmc_process* %1, %struct.pmc_process** %4, align 8
  %5 = load %struct.pmc_cpu*, %struct.pmc_cpu** %3, align 8
  %6 = load %struct.pmc_process*, %struct.pmc_process** %4, align 8
  %7 = load i32, i32* @MDP, align 4
  %8 = load i32, i32* @SWO, align 4
  %9 = load %struct.pmc_cpu*, %struct.pmc_cpu** %3, align 8
  %10 = load %struct.pmc_process*, %struct.pmc_process** %4, align 8
  %11 = call i32 (...) @rcr4()
  %12 = call i32 @PMCDBG3(i32 %7, i32 %8, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.pmc_cpu* %9, %struct.pmc_process* %10, i32 %11)
  %13 = call i32 (...) @rcr4()
  %14 = load i32, i32* @CR4_PCE, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @load_cr4(i32 %16)
  ret i32 0
}

declare dso_local i32 @PMCDBG3(i32, i32, i32, i8*, %struct.pmc_cpu*, %struct.pmc_process*, i32) #1

declare dso_local i32 @rcr4(...) #1

declare dso_local i32 @load_cr4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
