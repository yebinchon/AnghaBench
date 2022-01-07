; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_core.c_core_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_core.c_core_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_cpu = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.pmc* }
%struct.pmc = type { i64, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.trapframe = type { i32 }

@MDP = common dso_local global i32 0, align 4
@INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cpu=%d tf=0x%p um=%d\00", align 1
@curcpu = common dso_local global i64 0, align 8
@core_pcpu = common dso_local global %struct.core_cpu** null, align 8
@core_iap_npmc = common dso_local global i32 0, align 4
@PMC_STATE_RUNNING = common dso_local global i64 0, align 8
@PMC_HR = common dso_local global i32 0, align 4
@IAP_EVSEL0 = common dso_local global i64 0, align 8
@IAP_EVSEL_MASK = common dso_local global i32 0, align 4
@core_iap_wroffset = common dso_local global i64 0, align 8
@IAP_PMC0 = common dso_local global i64 0, align 8
@IAP_EN = common dso_local global i32 0, align 4
@pmc_stats = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*)* @core_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_intr(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmc*, align 8
  %5 = alloca %struct.core_cpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %10 = load i32, i32* @MDP, align 4
  %11 = load i32, i32* @INT, align 4
  %12 = load i64, i64* @curcpu, align 8
  %13 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %14 = bitcast %struct.trapframe* %13 to i8*
  %15 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %16 = call i32 @TRAPF_USERMODE(%struct.trapframe* %15)
  %17 = call i32 @PMCDBG3(i32 %10, i32 %11, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %12, i8* %14, i32 %16)
  store i32 0, i32* %7, align 4
  %18 = load %struct.core_cpu**, %struct.core_cpu*** @core_pcpu, align 8
  %19 = load i64, i64* @curcpu, align 8
  %20 = getelementptr inbounds %struct.core_cpu*, %struct.core_cpu** %18, i64 %19
  %21 = load %struct.core_cpu*, %struct.core_cpu** %20, align 8
  store %struct.core_cpu* %21, %struct.core_cpu** %5, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %105, %1
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @core_iap_npmc, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %108

26:                                               ; preds = %22
  %27 = load %struct.core_cpu*, %struct.core_cpu** %5, align 8
  %28 = getelementptr inbounds %struct.core_cpu, %struct.core_cpu* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.pmc*, %struct.pmc** %33, align 8
  store %struct.pmc* %34, %struct.pmc** %4, align 8
  %35 = icmp eq %struct.pmc* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %26
  %37 = load %struct.pmc*, %struct.pmc** %4, align 8
  %38 = call i32 @PMC_TO_MODE(%struct.pmc* %37)
  %39 = call i32 @PMC_IS_SAMPLING_MODE(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %26
  br label %105

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @iap_pmc_has_overflowed(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %105

47:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  %48 = load %struct.pmc*, %struct.pmc** %4, align 8
  %49 = getelementptr inbounds %struct.pmc, %struct.pmc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PMC_STATE_RUNNING, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %105

54:                                               ; preds = %47
  %55 = load i32, i32* @PMC_HR, align 4
  %56 = load %struct.pmc*, %struct.pmc** %4, align 8
  %57 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %58 = call i32 @pmc_process_interrupt(i32 %55, %struct.pmc* %56, %struct.trapframe* %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.pmc*, %struct.pmc** %4, align 8
  %60 = getelementptr inbounds %struct.pmc, %struct.pmc* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @iap_reload_count_to_perfctr_value(i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i64, i64* @IAP_EVSEL0, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = call i32 @rdmsr(i64 %68)
  %70 = load i32, i32* @IAP_EVSEL_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  store i32 %72, i32* %9, align 4
  %73 = load i64, i64* @IAP_EVSEL0, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @wrmsr(i64 %76, i32 %77)
  %79 = load i64, i64* @core_iap_wroffset, align 8
  %80 = load i64, i64* @IAP_PMC0, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @wrmsr(i64 %84, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %54
  br label %105

90:                                               ; preds = %54
  %91 = load i64, i64* @IAP_EVSEL0, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.pmc*, %struct.pmc** %4, align 8
  %97 = getelementptr inbounds %struct.pmc, %struct.pmc* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IAP_EN, align 4
  %102 = or i32 %100, %101
  %103 = or i32 %95, %102
  %104 = call i32 @wrmsr(i64 %94, i32 %103)
  br label %105

105:                                              ; preds = %90, %89, %53, %46, %41
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %22

108:                                              ; preds = %22
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 (...) @lapic_reenable_pmc()
  br label %113

113:                                              ; preds = %111, %108
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pmc_stats, i32 0, i32 1), align 4
  %118 = call i32 @counter_u64_add(i32 %117, i32 1)
  br label %122

119:                                              ; preds = %113
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pmc_stats, i32 0, i32 0), align 4
  %121 = call i32 @counter_u64_add(i32 %120, i32 1)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @PMCDBG3(i32, i32, i32, i8*, i64, i8*, i32) #1

declare dso_local i32 @TRAPF_USERMODE(%struct.trapframe*) #1

declare dso_local i32 @PMC_IS_SAMPLING_MODE(i32) #1

declare dso_local i32 @PMC_TO_MODE(%struct.pmc*) #1

declare dso_local i32 @iap_pmc_has_overflowed(i32) #1

declare dso_local i32 @pmc_process_interrupt(i32, %struct.pmc*, %struct.trapframe*) #1

declare dso_local i32 @iap_reload_count_to_perfctr_value(i32) #1

declare dso_local i32 @rdmsr(i64) #1

declare dso_local i32 @wrmsr(i64, i32) #1

declare dso_local i32 @lapic_reenable_pmc(...) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
