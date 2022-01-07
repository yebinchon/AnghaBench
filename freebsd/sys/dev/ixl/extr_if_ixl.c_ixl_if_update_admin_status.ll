; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_update_admin_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_update_admin_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@IXL_PF_STATE_ADAPTER_RESETTING = common dso_local global i32 0, align 4
@IXL_PF_STATE_MDD_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixl_if_update_admin_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_if_update_admin_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ixl_pf* @iflib_get_softc(i32 %6)
  store %struct.ixl_pf* %7, %struct.ixl_pf** %3, align 8
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 1
  store %struct.i40e_hw* %9, %struct.i40e_hw** %4, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IXL_PF_STATE_ADAPTER_RESETTING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %18 = call i32 @ixl_handle_empr_reset(%struct.ixl_pf* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %21 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IXL_PF_STATE_MDD_PENDING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %28 = call i32 @ixl_handle_mdd_event(%struct.ixl_pf* %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %31 = call i32 @ixl_process_adminq(%struct.ixl_pf* %30, i64* %5)
  %32 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %33 = call i32 @ixl_update_link_status(%struct.ixl_pf* %32)
  %34 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %35 = call i32 @ixl_update_stats_counters(%struct.ixl_pf* %34)
  %36 = load i64, i64* %5, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @iflib_admin_intr_deferred(i32 %39)
  br label %44

41:                                               ; preds = %29
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %43 = call i32 @ixl_enable_intr0(%struct.i40e_hw* %42)
  br label %44

44:                                               ; preds = %41, %38
  ret void
}

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

declare dso_local i32 @ixl_handle_empr_reset(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_handle_mdd_event(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_process_adminq(%struct.ixl_pf*, i64*) #1

declare dso_local i32 @ixl_update_link_status(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_update_stats_counters(%struct.ixl_pf*) #1

declare dso_local i32 @iflib_admin_intr_deferred(i32) #1

declare dso_local i32 @ixl_enable_intr0(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
