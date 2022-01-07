; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_update_admin_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_update_admin_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @iavf_if_update_admin_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_if_update_admin_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_sc*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.iavf_sc* @iflib_get_softc(i32 %6)
  store %struct.iavf_sc* %7, %struct.iavf_sc** %3, align 8
  %8 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %9 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %8, i32 0, i32 0
  store %struct.i40e_hw* %9, %struct.i40e_hw** %4, align 8
  %10 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %11 = call i32 @iavf_process_adminq(%struct.iavf_sc* %10, i64* %5)
  %12 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %13 = call i32 @iavf_update_link_status(%struct.iavf_sc* %12)
  %14 = load i64, i64* %5, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @iflib_admin_intr_deferred(i32 %17)
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %21 = call i32 @iavf_enable_adminq_irq(%struct.i40e_hw* %20)
  br label %22

22:                                               ; preds = %19, %16
  ret void
}

declare dso_local %struct.iavf_sc* @iflib_get_softc(i32) #1

declare dso_local i32 @iavf_process_adminq(%struct.iavf_sc*, i64*) #1

declare dso_local i32 @iavf_update_link_status(%struct.iavf_sc*) #1

declare dso_local i32 @iflib_admin_intr_deferred(i32) #1

declare dso_local i32 @iavf_enable_adminq_irq(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
