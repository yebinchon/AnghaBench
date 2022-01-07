; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_smi.c_smi_check_forward_dr_smp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_smi.c_smi_check_forward_dr_smp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i64, i64, i32, i32 }

@IB_LID_PERMISSIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smi_check_forward_dr_smp(%struct.ib_smp* %0) #0 {
  %2 = alloca %struct.ib_smp*, align 8
  store %struct.ib_smp* %0, %struct.ib_smp** %2, align 8
  %3 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %4 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %7 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %10 = call i32 @ib_get_smp_direction(%struct.ib_smp* %9)
  %11 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %12 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %18 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @__smi_check_forward_dr_smp(i32 %5, i32 %8, i32 %10, i32 %16, i32 %22)
  ret i32 %23
}

declare dso_local i32 @__smi_check_forward_dr_smp(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ib_get_smp_direction(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
