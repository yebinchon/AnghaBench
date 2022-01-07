; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib.h_init_query_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib.h_init_query_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i32, i32, i32 }

@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_smp*)* @init_query_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_query_mad(%struct.ib_smp* %0) #0 {
  %2 = alloca %struct.ib_smp*, align 8
  store %struct.ib_smp* %0, %struct.ib_smp** %2, align 8
  %3 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %4 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %3, i32 0, i32 0
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 4
  %6 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %7 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %9 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %8, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @IB_MGMT_METHOD_GET, align 4
  %11 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %12 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
