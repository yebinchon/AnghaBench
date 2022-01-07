; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_pmu.c_bcm_get_pmu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_pmu.c_bcm_get_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_query = type { i32 }
%struct.bcm_platform = type { %struct.bhnd_pmu_query }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bhnd_pmu_query* (%struct.bcm_platform*)* @bcm_get_pmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bhnd_pmu_query* @bcm_get_pmu(%struct.bcm_platform* %0) #0 {
  %2 = alloca %struct.bhnd_pmu_query*, align 8
  %3 = alloca %struct.bcm_platform*, align 8
  store %struct.bcm_platform* %0, %struct.bcm_platform** %3, align 8
  %4 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %5 = call i32 @bcm_has_pmu(%struct.bcm_platform* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.bhnd_pmu_query* null, %struct.bhnd_pmu_query** %2, align 8
  br label %11

8:                                                ; preds = %1
  %9 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %10 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %9, i32 0, i32 0
  store %struct.bhnd_pmu_query* %10, %struct.bhnd_pmu_query** %2, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  ret %struct.bhnd_pmu_query* %12
}

declare dso_local i32 @bcm_has_pmu(%struct.bcm_platform*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
