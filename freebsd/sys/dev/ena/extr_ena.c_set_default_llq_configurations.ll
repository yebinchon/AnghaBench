; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_set_default_llq_configurations.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_set_default_llq_configurations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_llq_configurations = type { i32, i32, i32, i32, i32 }

@ENA_ADMIN_INLINE_HEADER = common dso_local global i32 0, align 4
@ENA_ADMIN_LIST_ENTRY_SIZE_128B = common dso_local global i32 0, align 4
@ENA_ADMIN_MULTIPLE_DESCS_PER_ENTRY = common dso_local global i32 0, align 4
@ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_llq_configurations*)* @set_default_llq_configurations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_default_llq_configurations(%struct.ena_llq_configurations* %0) #0 {
  %2 = alloca %struct.ena_llq_configurations*, align 8
  store %struct.ena_llq_configurations* %0, %struct.ena_llq_configurations** %2, align 8
  %3 = load i32, i32* @ENA_ADMIN_INLINE_HEADER, align 4
  %4 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %2, align 8
  %5 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @ENA_ADMIN_LIST_ENTRY_SIZE_128B, align 4
  %7 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %2, align 8
  %8 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @ENA_ADMIN_MULTIPLE_DESCS_PER_ENTRY, align 4
  %10 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %2, align 8
  %11 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_2, align 4
  %13 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %2, align 8
  %14 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %2, align 8
  %16 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %15, i32 0, i32 0
  store i32 128, i32* %16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
