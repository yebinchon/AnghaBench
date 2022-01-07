; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_vsi_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_vsi_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.ixl_vsi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vsi*)* @ixl_vf_vsi_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_vsi_release(%struct.ixl_pf* %0, %struct.ixl_vsi* %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store %struct.ixl_vsi* %1, %struct.ixl_vsi** %4, align 8
  %6 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %7 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %6, i32 0, i32 0
  store %struct.i40e_hw* %7, %struct.i40e_hw** %5, align 8
  %8 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %9 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %15 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %16 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @i40e_aq_delete_element(%struct.i40e_hw* %14, i32 %17, i32* null)
  br label %19

19:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @i40e_aq_delete_element(%struct.i40e_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
